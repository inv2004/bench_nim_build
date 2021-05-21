import std/httpclient
import std/asyncdispatch
import json
import strutils
import algorithm

import terminaltables
import github

type
  Row = object
    cpu, cores, freq, ram, disk, os, run1, run2: string

template updateValue(row: var Row, line: string, tag) =
  if line.toUpper().startsWith(toUpper(astToStr(tag)) & ':'):
    row.tag = (line.split(':'))[1].strip()

proc processBody(body: string): Row =
  for l in body.split(Newlines):
    updateValue(result, l, cpu)
    updateValue(result, l, cores)
    updateValue(result, l, freq)
    updateValue(result, l, ram)
    updateValue(result, l, disk)
    updateValue(result, l, os)
    if l.contains("seconds:"):
      if result.run1.len == 0:
        result.run1 = (l.split(':'))[0].strip()
        result.run1.removeSuffix(" seconds")
      else:
        result.run2 = (l.split(':'))[0].strip()
        result.run2.removeSuffix(" seconds")

  result

proc process(j: JsonNode) =
  let tbl = newAsciiTable()
  # tbl.separateRows = false
  tbl.setHeaders(@["CPU", "Cores", "Freq", "Ram", "Disk", "OS", "build_all (s)", "koch temp (s)"])

  var t: seq[Row]

  for issue in j:
    t.add processBody issue{"body"}.getStr

  for row in t.sortedByIt(it.run1):
    tbl.addRow @[row.cpu, row.cores, row.freq, row.ram, row.disk, row.os, row.run1, row.run2]

  tbl.printTable()



proc main() =
  let req = getIssues.call("stats")
  let res = waitFor req.retry(tries = 1)
  echo res.code
  let j = parseJson(waitFor res.body)
  process(j)

when isMainModule:
  main()
