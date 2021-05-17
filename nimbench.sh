#!/usr/bin/env bash

DIR=benchnim

#rm -rf $DIR
[[ -d $DIR ]] && { echo Remove $DIR folder before run; exit 1; }

#rm -rf $HOME/.cache/nim/*_[dr]
for D in koch_d nim_r nimble_r nimgrep_r nimpretty_r nimsuggest_r testament_r; do
  C="$HOME/.cache/nim/$D"
  [[ -d $C ]] && { echo Cache found $C , remove before run; exit 1; }
done

export TIMEFORMAT='%3R seconds'

collectinfo() {
  [[ "$(uname)" == "Linux" ]] && {
    printf 'Processor:    '
      awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//'
      printf 'CPU cores:    '
      awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo
      printf 'Frequency:    '
      awk -F: ' /cpu MHz/ {freq=$2} END {print freq " MHz"}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//'
      printf 'RAM:          '
      free -h | awk 'NR==2 {print $2}'
  } || {
    printf 'Processor:    '
    sysctl -n hw.model
    printf 'CPU cores:    '
    sysctl -n hw.ncpu
    printf 'Frequency:    '
    grep -Eo -- '[0-9.]+-MHz' /var/run/dmesg.boot | tr -- '-' ' ' | sort -u
    printf 'RAM:          '
    sysctl -n hw.physmem | B_to_MiB
  }
}


prep() {
  cp -r NimOrig Nim && \
  (
    cd Nim && \
    git reset --hard fac5bae7b7d87aeec48c7252029c2852ee157ac9 && \
    source ci/funs.sh && \
    nimDefineVars
    echo_run git clone -q --depth 1 $nim_csourcesUrl "$nim_csourcesDir" && \
    echo_run git -C "$nim_csourcesDir" checkout $nim_csourcesHash
  )
}

bench_cmd() {
  local PREF=$1
  shift
  (
    echo Benching $@
    cd Nim && /usr/bin/time -f "%e seconds $PREF: $*" -a -o ../time.log $@
  )
}

mkdir $DIR
(
  cd $DIR && \
  collectinfo >> time.log
  git clone https://github.com/nim-lang/Nim NimOrig && \
  prep && \

  bench_cmd 1st ./build_all.sh &&
  bench_cmd 1st ./koch temp -d:release && \

  rm -rf Nim && prep && \

  bench_cmd 2nd ./build_all.sh &&
  bench_cmd 2nd ./koch temp -d:release && \

  cat time.log
  BODY=`cat time.log | tr '\n ' '!+' | sed 's/!/%0A/g'`
  URL="https://github.com/inv2004/build_nim_benchmarks/issues/new?title=Bench&labels=stats&body=%60%60%60%0A$BODY%60%60%60"
  [[ -x $BROWSER ]] && exec "$BROWSER" "$URL" || \
  command -v wslview && exec wslview $URL || \
  command -v open && open "$URL" || \
  echo "open the link in browser to commit results: $URL"
)

