#!/usr/bin/env bash

DIR=benchnim

rm -rf $HOME/.cache/nim/{koch_d,nim_r,nimble_r,nimgrep_r,nimpretty_r,nimsuggest_r,testament_r}

collectinfo() {
  OS=$(uname)
  [[ $OS == "Linux" ]] && {
    awk -F: '/model name/ {name=$2} END {print "CPU:" name}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//'
    awk -F: '/model name/ {core++} END {print "Cores:" core}' /proc/cpuinfo
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
  )
}

mkdir -p $DIR
(
  cd $DIR && \
  rm -f time.log && \
  collectinfo >> time.log
  [[ ! -d NimCloned ]] && (
    git clone https://github.com/nim-lang/Nim NimCloned && \
    cd NimCloned && \
    git reset --hard fac5bae7b7d87aeec48c7252029c2852ee157ac9 && \
    source ci/funs.sh && \
    nimDefineVars && \
    echo_run git clone -q --depth 1 $nim_csourcesUrl "$nim_csourcesDir" && \
    echo_run git -C "$nim_csourcesDir" checkout $nim_csourcesHash
  )

  #[[ -d Nim ]] && rm -rf Nim
  #cp -r NimCloned Nim && \
  #bench_cmd ./build_all.sh && \
  #bench_cmd ./koch temp -d:release && \

  cat time.log && \
  TITLE=`cat time.log | grep ^CPU: | tr '\n ' '!+' | sed 's/!/%0A/g'`
  BODY=`cat time.log | tr '\n ' '!+' | sed 's/!/%0A/g'` && \
  URL="https://github.com/inv2004/build_nim_benchmarks/issues/new?title=$TITLE&labels=stats&body=%60%60%60%0A$BODY%60%60%60"

  [[ -x $BROWSER ]] && exec "$BROWSER" "$URL" || \
  command -v wslview && exec wslview $URL || \
  command -v open && open "$URL" || \
  echo "open the link in browser to commit results: $URL"
)

