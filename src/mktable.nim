import std/httpclient
import json
import strutils
import algorithm
import decimal
import os

type
  Row = object
    cpu, cores, freq, ram, disk, os, cc, link: string
    run1, run2: DecimalType

template updateValue(row: var Row, line: string, tag) =
  if line.toUpper().startsWith(toUpper(astToStr(tag)) & ':'):
    row.tag = (line.split(':'))[1..^1].join().strip()

proc processBody(body: string): Row =
  for l in body.split(Newlines):
    updateValue(result, l, cpu)
    updateValue(result, l, cores)
    updateValue(result, l, freq)
    updateValue(result, l, ram)
    updateValue(result, l, disk)
    updateValue(result, l, os)
    updateValue(result, l, cc)
    if "clang" in result.cc:
      result.cc = "clang"
    elif "gcc" in result.cc:
      result.cc = "gcc"
    else:
      if result.os.contains("Darwin"): result.cc = "clang"
      elif result.os.contains("Linux"): result.cc = "gcc"
      elif result.os.contains("Windows"): result.cc = "gcc"

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
  result.add "CPU|Cores|OS|Cc|build_all(s)|koch temp(s)|Link"
  result.add "---|-----|--|--|------------|------------|----"

  var t: seq[Row]

  for issue in j:
    var row = processBody issue{"body"}.getStr
    echo issue.pretty
    row.link = "[" & $issue["number"].getInt & "](" & issue["html_url"].getStr & ")"
    t.add row

  for row in t.sortedByIt(it.run1 + it.run2):
    result.add @[row.cpu, row.cores, row.os, row.cc, $row.run1, $row.run2, row.link].join("|")

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
  let client = newHttpClient(timeout = 10000)
  let body = client.getContent("https://api.github.com/repos/inv2004/bench_nim_build/issues?state=all&labels=stats&per_page=100")
  let j = parseJson(body)
  let tblStr = process(j)
  if paramCount() >= 1 and paramStr(1) == "readme":
    changeReadme(tblStr)
  else:
    for l in tblStr:
      echo l

when isMainModule:
  main()
