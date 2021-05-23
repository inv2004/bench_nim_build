import std/httpclient
import std/asyncdispatch
import json
import strutils
import algorithm
import decimal

import github

type
  Row = object
    cpu, cores, freq, ram, disk, os, link: string
    run1, run2: DecimalType

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
      if result.run1.isNil:
        var run1 = l.split(':')[0].strip().replace(",", ".")
        run1.removeSuffix(" seconds")
        result.run1 = newDecimal(run1)
      else:
        var run2 = l.split(':')[0].strip().replace(",", ".")
        run2.removeSuffix(" seconds")
        result.run2 = newDecimal(run2)

  result

proc process(j: JsonNode) =
  # tbl.separateRows = false
  echo "CPU|Cores|OS|build_all(s)|koch temp(s)|Link"
  echo "---|-----|--|------------|------------|----"

  var t: seq[Row]

  for issue in j:
    var row = processBody issue{"body"}.getStr
    row.link = "[" & $issue["number"].getInt & "](" & issue["url"].getStr & ")"
    t.add row

  for row in t.sortedByIt(it.run1 + it.run2):
    echo @[row.cpu, row.cores, row.os, $row.run1, $row.run2, row.link].join("|")

proc main() =
  let req = getReposOwnerRepoIssues.call("stats", "bench_nim_build", "inv2004")
  let res = waitFor req.retry(tries = 1)
  echo res.code
  let j = parseJson(waitFor res.body)
  process(j)

when isMainModule:
  main()
