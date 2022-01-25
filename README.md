# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

**Blog post:** https://t.me/inv2004_dev_blog/43

# Results

Sorted by build_all+koch_temp

CPU|Cores|OS|build_all(s)|koch temp(s)|Link
---|-----|--|------------|------------|----
Apple M1 Max|10|Darwin (21.2.0)|51.547|13.901|[44](https://github.com/inv2004/bench_nim_build/issues/44)
Apple M1 Pro|10|Darwin (21.1.0)|53.981|14.773|[34](https://github.com/inv2004/bench_nim_build/issues/34)
Apple M1 Pro|8|Darwin (21.2.0)|59.777|15.823|[46](https://github.com/inv2004/bench_nim_build/issues/46)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.4.0-92-generic)|63.551|16.777|[39](https://github.com/inv2004/bench_nim_build/issues/39)
Apple M1|8|Darwin (20.3.0)|66.326|19.451|[25](https://github.com/inv2004/bench_nim_build/issues/25)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.11.21_1)|72.756|24.163|[19](https://github.com/inv2004/bench_nim_build/issues/19)
11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz|16|Linux (5.13.0-25-generic)|76.102|23.883|[47](https://github.com/inv2004/bench_nim_build/issues/47)
Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz|16|Linux (5.8.0-53-generic)|93.806|29.298|[28](https://github.com/inv2004/bench_nim_build/issues/28)
AMD Ryzen 7 3700X 8-Core Processor|16|Linux (5.15.5-arch1-1.1)|96.414|29.405|[36](https://github.com/inv2004/bench_nim_build/issues/36)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (21.2.0)|106.140|27.187|[50](https://github.com/inv2004/bench_nim_build/issues/50)
AMD Ryzen 9 3950X 16-Core Processor|32|Linux (4.4.0-19041-Microsoft WSL)|98.574|35.247|[15](https://github.com/inv2004/bench_nim_build/issues/15)
AMD Ryzen 5 5600H with Radeon Graphics|12|Linux (5.11.0-25-generic)|107.166|34.038|[32](https://github.com/inv2004/bench_nim_build/issues/32)
Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz|12|Linux (5.11.21_1)|109.583|36.083|[27](https://github.com/inv2004/bench_nim_build/issues/27)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.15.6-arch2-1)|118.803|36.275|[30](https://github.com/inv2004/bench_nim_build/issues/30)
AMD Ryzen 7 4700U with Radeon Graphics|8|Linux (5.16.1-xanmod1)|118.317|38.841|[42](https://github.com/inv2004/bench_nim_build/issues/42)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.15.14-xanmod1)|121.605|38.117|[45](https://github.com/inv2004/bench_nim_build/issues/45)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.12.4-arch1-2)|121.251|40.853|[14](https://github.com/inv2004/bench_nim_build/issues/14)
AMD Ryzen 7 4700U with Radeon Graphics|8|Linux (5.16.1-xanmod1)|128.098|41.172|[41](https://github.com/inv2004/bench_nim_build/issues/41)
Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz|8|Linux (5.7.10)|132.834|37.958|[40](https://github.com/inv2004/bench_nim_build/issues/40)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.4.72-microsoft-standard-WSL2)|135.763|42.155|[49](https://github.com/inv2004/bench_nim_build/issues/49)
Intel(R) Core(TM) i5-7600K CPU @ 3.80GHz|4|Darwin (20.6.0)|155.772|36.878|[35](https://github.com/inv2004/bench_nim_build/issues/35)
QEMU (AMD Ryzen 5 1600)|8|Darwin (19.6.0)|158.771|42.652|[13](https://github.com/inv2004/bench_nim_build/issues/13)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.13.13-1070.native)|168.498|52.283|[37](https://github.com/inv2004/bench_nim_build/issues/37)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.60.1-microsoft-standard-WSL2)|169.890|54.009|[38](https://github.com/inv2004/bench_nim_build/issues/38)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|8|Linux (5.8.0-53-generic)|183.852|57.175|[26](https://github.com/inv2004/bench_nim_build/issues/26)
Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz|8|Darwin (21.1.0)|196.004|45.958|[33](https://github.com/inv2004/bench_nim_build/issues/33)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|6|Microsoft Windows 10 Home   (10.0.19043  )|231.51|55.12|[48](https://github.com/inv2004/bench_nim_build/issues/48)
Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz|6|Windows 10 Pro   (10.0.19042  )|238.43|54.74|[31](https://github.com/inv2004/bench_nim_build/issues/31)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|4|Microsoft Windows 10 Pro   (10.0.19042  )|288.06|72.12|[16](https://github.com/inv2004/bench_nim_build/issues/16)
Intel(R) Atom(TM) CPU N270   @ 1.60GHz|2|Linux (4.15.0-142-generic)|3258.861|1172.002|[43](https://github.com/inv2004/bench_nim_build/issues/43)

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
