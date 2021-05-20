#!/usr/bin/env bash

DIR=benchnim

rm -rf $HOME/.cache/nim/{koch_d,nim_r,nimble_r,nimgrep_r,nimpretty_r,nimsuggest_r,testament_r}

collectinfo() {
  OS=$(uname)
  [[ $OS == "Linux" ]] && {
    awk -F: '/model name/ {name=$2} END {print "CPU:" name}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//'
    awk -F: '/model name/ {core++} END {print "Cores: " core}' /proc/cpuinfo
    awk -F: ' /cpu MHz/ {freq=$2} END {print "Freq:" freq " MHz"}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//'
    free -h | awk 'NR==2 {print "Ram:" $2}'
    echo "Disk:" `lsblk -n -d -o VENDOR,MODEL | head -n1`
    echo "OS: $OS"
  } || {
    echo 'CPU: ' `sysctl -n hw.model`
    echo 'Cores: ' `sysctl -n hw.ncpu`
    echo 'Freq: ' `sysctl -n hw.cpufrequency`
    echo 'RAM: ' `sysctl -n hw.physmem`
    echo "Disk:" `lsblk -n -d -o VENDOR,MODEL | head -n1`
    echo "OS: $OS"
  }
}

bench_cmd() {
  (
    echo Benching $@
    cd Nim && /usr/bin/time -f "%e seconds: $*" -a -o ../time.log $@
  ) || { echo Error during build; exit 1; }
}

complete() {
  cat >complete.nim <<'EEE'
import browsers, uri, strformat, strutils, sequtils
let lines = toSeq(lines("time.log")).deduplicate()
echo echo lines.join("\n")
let title = lines.filterIt(it.startsWith("CPU:")).join().encodeUrl()
let body = ("```\n" & lines.join("\n") & "\n```").encodeUrl()
let url = fmt"https://github.com/inv2004/bench_nim_build/issues/new?title={title}&labels=stats&body={body}"
echo "Please open in your browser the following link if browser is not open:"
echo url
openDefaultBrowser(url)
EEE

[[ grep -i microsoft /proc/version ]] && { export BROWSER=wslview; }
./Nim/bin/nim c -r complete.nim

}

mkdir -p $DIR
(
  cd $DIR && \
  collectinfo > time.log
  [[ ! -d NimCloned ]] && (
    git clone https://github.com/nim-lang/Nim NimCloned && \
    cd NimCloned && \
    git reset --hard fac5bae7b7d87aeec48c7252029c2852ee157ac9 && \
    source ci/funs.sh && \
    nimDefineVars && \
    echo_run git clone -q --depth 1 $nim_csourcesUrl "$nim_csourcesDir" && \
    echo_run git -C "$nim_csourcesDir" checkout $nim_csourcesHash
  )

  [[ -d Nim ]] && rm -rf Nim
  cp -r NimCloned Nim && \
  bench_cmd ./build_all.sh && \
  bench_cmd ./koch temp -d:release

  cat time.log && \
  complete
)

