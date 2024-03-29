#! /bin/sh
# DO NO EDIT DIRECTLY! auto-generated by `nim r tools/ci_generate.nim`

# build development version of the compiler; can be rerun safely.
# arguments can be passed, e.g.:
# CC=gcc ucpu=amd64 uos=darwin

set -u # error on undefined variables
set -e # exit on first error

. ci/funs.sh
nimBuildCsourcesIfNeeded "$@"

echo_run bin/nim c --skipUserCfg --skipParentCfg --hints:off --cc:$CC --cc:$CC --cc:$CC koch
echo_run ./koch boot -d:release --skipUserCfg --skipParentCfg --hints:off --cc:$CC --cc:$CC --cc:$CC
echo_run ./koch tools --skipUserCfg --skipParentCfg --hints:off --cc:$CC --cc:$CC --cc:$CC

