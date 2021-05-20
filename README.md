# build_nim_benchmarks

Tool to benchmark (Nim)[https://github.com/nim-lang/Nim] compile time

# Run

## Warning
The script deletes `koch_d` `nim_r` `nimble_r` `nimgrep_r` `nimpretty_r` `nimsuggest_r` `testament_r` from Nim's cache

## Linux
```bash
curl -O https://raw.githubusercontent.com/inv2004/bench_nim_build/main/nimbench.sh
bash nimbench.sh
```

## Windows
```cmd
bitsadmin /transfer download https://raw.githubusercontent.com/inv2004/bench_nim_build/main/nimbench.bat "%cd%\nimbench.bat"
nimbench.bat
```

## OSX (Not ready)
```bash
curl -O https://raw.githubusercontent.com/inv2004/bench_nim_build/main/nimbench.sh
bash nimbench.sh
```
