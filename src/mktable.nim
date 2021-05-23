import std/httpclient
import std/asyncdispatch
import json
import strutils
import algorithm
import decimal
import os

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

proc process(j: JsonNode): seq[string] =
  result.add "CPU|Cores|OS|build_all(s)|koch temp(s)|Link"
  result.add "---|-----|--|------------|------------|----"

  var t: seq[Row]

  for issue in j:
    var row = processBody issue{"body"}.getStr
    row.link = "[" & $issue["number"].getInt & "](" & issue["url"].getStr & ")"
    t.add row

  for row in t.sortedByIt(it.run1 + it.run2):
    result.add @[row.cpu, row.cores, row.os, $row.run1, $row.run2, row.link].join("|")

proc changeReadme(tblStr: seq[string]) =
  let f = open("README.md")
  defer: close(f)
  let w = open("README.md.new", fmWrite)
  defer: close(w)
  var l: string
  while readLine(f, l):
    if l.startsWith("CPU|Cores"):
      for ll in tblStr:
        w.writeLine ll
      while readLine(f, l):
        if l.len == 0:
          w.writeLine ""
          break
    else:
      w.writeLine l

proc main() =
  let req = getReposOwnerRepoIssues.call("stats", "bench_nim_build", "inv2004")
  let res = waitFor req.retry(tries = 1)
  echo res.code
  let j = parseJson(waitFor res.body)
  let tblStr = process(j)
  if paramCount() >= 1 and paramStr(1) == "readme":
    changeReadme(tblStr)
  else:
    echo tblStr

when isMainModule:
  main()
