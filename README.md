# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

# Results

Sorted by build_all+koch_temp

CPU|Cores|OS|build_all(s)|koch temp(s)|Link
---|-----|--|------------|------------|----
Apple M1|8|Darwin (20.3.0)|66.326|19.451|[25](https://github.com/inv2004/bench_nim_build/issues/25)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.11.21_1)|72.756|24.163|[19](https://github.com/inv2004/bench_nim_build/issues/19)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (19.6.0)|103.230|27.537|[12](https://github.com/inv2004/bench_nim_build/issues/12)
AMD Ryzen 9 3950X 16-Core Processor|32|Linux (4.4.0-19041-Microsoft WSL)|98.574|35.247|[15](https://github.com/inv2004/bench_nim_build/issues/15)
Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz|32|Linux (5.4.0-51-generic)|102.739|33.637|[7](https://github.com/inv2004/bench_nim_build/issues/7)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.12.4-arch1-2)|121.251|40.853|[14](https://github.com/inv2004/bench_nim_build/issues/14)
Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz|12|Linux (5.11.21_1)|157.412|39.012|[18](https://github.com/inv2004/bench_nim_build/issues/18)
QEMU (AMD Ryzen 5 1600)|8|Darwin (19.6.0)|158.771|42.652|[13](https://github.com/inv2004/bench_nim_build/issues/13)
AMD Ryzen 5 1600 Six-Core Processor|12|Linux (5.12.4-arch1-2)|156.267|48.535|[6](https://github.com/inv2004/bench_nim_build/issues/6)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.36-2-MANJARO)|168.011|52.299|[10](https://github.com/inv2004/bench_nim_build/issues/10)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.4.72-microsoft-standard-WSL2)|172.88|55.53|[3](https://github.com/inv2004/bench_nim_build/issues/3)
Intel(R) Core(TM) i5-8259U CPU @ 2.30GHz|8|Darwin (20.4.0)|188.181|48.974|[8](https://github.com/inv2004/bench_nim_build/issues/8)
Macmini9,1|8||206.53|67.27|[1](https://github.com/inv2004/bench_nim_build/issues/1)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Microsoft Windows 10 Pro (10.0.19042)|231.54|51.79|[2](https://github.com/inv2004/bench_nim_build/issues/2)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|4|Microsoft Windows 10 Pro   (10.0.19042  )|288.06|72.12|[16](https://github.com/inv2004/bench_nim_build/issues/16)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|4|Linux (5.10.36-2-MANJARO)|298.918|93.888|[9](https://github.com/inv2004/bench_nim_build/issues/9)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|2|Microsoft Windows 10 Pro   (10.0.19042  )|370.44|92.67|[4](https://github.com/inv2004/bench_nim_build/issues/4)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|4|Linux (5.4.72-microsoft-standard-WSL2)|397.34|140.62|[5](https://github.com/inv2004/bench_nim_build/issues/5)
Intel(R) Celeron(R) CPU N3350 @ 1.10GHz|2|Linux (5.11.16-arch1-1)|905.112|292.001|[11](https://github.com/inv2004/bench_nim_build/issues/11)

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
