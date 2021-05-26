# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

# Results

Sorted by build_all+koch_temp

CPU|Cores|OS|build_all(s)|koch temp(s)|Link
---|-----|--|------------|------------|----
Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz|16|Linux (5.8.0-53-generic)|93.806|29.298|[28](https://github.com/inv2004/bench_nim_build/issues/28)

# Run

**It needs git and gcc(mingw) to run it**

After run it will open browser to add the results into the repo automatically

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

## OSX
```bash
curl -O https://raw.githubusercontent.com/inv2004/bench_nim_build/main/nimbench.sh
bash nimbench.sh
```
