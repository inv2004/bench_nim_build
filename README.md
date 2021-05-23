# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

# Results

CPU|Cores|OS|build_all (s)|koch temp(s)|Link
---|-----|--|-------------|------------|----
Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz|32|Linux (5.4.0-51-generic)|102.739|33.637|[7](https://api.github.com/repos/inv2004/bench_nim_build/issues/7)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (19.6.0)|103,230|27,537|[12](https://api.github.com/repos/inv2004/bench_nim_build/issues/12)
AMD Ryzen 5 1600 Six-Core Processor|12|Linux (5.12.4-arch1-2)|156,267|48,535|[6](https://api.github.com/repos/inv2004/bench_nim_build/issues/6)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.36-2-MANJARO)|168.011|52.299|[10](https://api.github.com/repos/inv2004/bench_nim_build/issues/10)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.4.72-microsoft-standard-WSL2)|172.88|55.53|[3](https://api.github.com/repos/inv2004/bench_nim_build/issues/3)
Intel(R) Core(TM) i5-8259U CPU @ 2.30GHz|8|Darwin (20.4.0)|188.181|48.974|[8](https://api.github.com/repos/inv2004/bench_nim_build/issues/8)
Macmini9,1|8||206.53|67.27|[1](https://api.github.com/repos/inv2004/bench_nim_build/issues/1)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Microsoft Windows 10 Pro|231.54|51.79|[2](https://api.github.com/repos/inv2004/bench_nim_build/issues/2)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|4|Linux (5.10.36-2-MANJARO)|298.918|93.888|[9](https://api.github.com/repos/inv2004/bench_nim_build/issues/9)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|2|Microsoft Windows 10 Pro   (10.0.19042  )|370.44|92.67|[4](https://api.github.com/repos/inv2004/bench_nim_build/issues/4)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|4|Linux (5.4.72-microsoft-standard-WSL2)|397.34|140.62|[5](https://api.github.com/repos/inv2004/bench_nim_build/issues/5)
Intel(R) Celeron(R) CPU N3350 @ 1.10GHz|2|Linux (5.11.16-arch1-1)|905,112|292,001|[11](https://api.github.com/repos/inv2004/bench_nim_build/issues/11)

# Run

**It needs git and gcc(mingw) to run it**

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
