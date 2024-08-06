# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

**Blog post:** [https://t.me/inv2004_dev_blog/43](https://translated.turbopages.org/proxy_u/ru-en.ru.8db46472-65493ce9-fda12b92-74722d776562/https/t.me/s/inv2004_dev_blog/43)

# Update
Now it supports `nimbench.sh CC=clang` on Linux and `nimbench.sh CC=gcc` on MacOS

# Run [here](#run-here-1)

# Results

Sorted by build_all+koch_temp

CPU|Cores|OS|Cc|build_all(s)|koch temp(s)|Link
---|-----|--|--|------------|------------|----
Apple M2 Max|12|Darwin (23.0.0)|Apple|43.026|11.732|[92](https://github.com/inv2004/bench_nim_build/issues/92)
Apple M2 Pro|12|Darwin 23.0.0|Apple|48.826|13.208|[93](https://github.com/inv2004/bench_nim_build/issues/93)
Apple M1 Max|10|Darwin (21.2.0)|clang|51.547|13.901|[44](https://github.com/inv2004/bench_nim_build/issues/44)
Apple M1 Pro|8|Darwin 23.2.0|Apple|53.328|14.788|[94](https://github.com/inv2004/bench_nim_build/issues/94)
Apple M1 Pro|10|Darwin (21.1.0)|clang|53.981|14.773|[34](https://github.com/inv2004/bench_nim_build/issues/34)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.4.0-92-generic)|clang|59.340|15.184|[71](https://github.com/inv2004/bench_nim_build/issues/71)
Apple M1 Pro|8|Darwin (21.2.0)|clang|59.777|15.823|[46](https://github.com/inv2004/bench_nim_build/issues/46)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.15.57.1-microsoft-standard-WSL2)|clang|61.112|16.982|[75](https://github.com/inv2004/bench_nim_build/issues/75)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.4.0-92-generic)|gcc|63.551|16.777|[39](https://github.com/inv2004/bench_nim_build/issues/39)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.10.60.1-microsoft-standard-WSL2)|clang|66.003|16.310|[69](https://github.com/inv2004/bench_nim_build/issues/69)
Apple M1|8|Darwin (20.3.0)|clang|66.326|19.451|[25](https://github.com/inv2004/bench_nim_build/issues/25)
AMD Ryzen Threadripper PRO 3995WX 64-Cores|128|Linux (5.15.16-200.fc35.x86_64)|clang|68.173|19.186|[62](https://github.com/inv2004/bench_nim_build/issues/62)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.16.4-zen1-1-zen)|clang|71.719|17.792|[65](https://github.com/inv2004/bench_nim_build/issues/65)
AMD Ryzen Threadripper PRO 3995WX 64-Cores|128|Linux (5.15.16-200.fc35.x86_64)|gcc|70.157|21.928|[61](https://github.com/inv2004/bench_nim_build/issues/61)
11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz|12|Linux (6.4.12-zen1-1-zen)|clang|73.786|21.218|[90](https://github.com/inv2004/bench_nim_build/issues/90)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.11.21_1)|gcc|72.756|24.163|[19](https://github.com/inv2004/bench_nim_build/issues/19)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.13.13-1070.native)|gcc|76.624|23.148|[68](https://github.com/inv2004/bench_nim_build/issues/68)
11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz|16|Linux (5.13.0-25-generic)|gcc|76.102|23.883|[47](https://github.com/inv2004/bench_nim_build/issues/47)
AMD Ryzen 7 3700X 8-Core Processor|16|Linux (5.15.5-arch1-1.1)|clang|78.940|21.280|[63](https://github.com/inv2004/bench_nim_build/issues/63)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.10.60.1-microsoft-standard-WSL2)|gcc|78.938|25.256|[70](https://github.com/inv2004/bench_nim_build/issues/70)
12th Gen Intel(R) Core(TM) i9-12900H|20|Linux (6.1.6-arch1-1)|gcc|81.791|23.859|[79](https://github.com/inv2004/bench_nim_build/issues/79)
12th Gen Intel(R) Core(TM) i9-12900H|20|Linux (6.1.6-arch1-1)|gcc|81.535|24.878|[78](https://github.com/inv2004/bench_nim_build/issues/78)
AMD Ryzen 5 PRO 5650U with Radeon Graphics|12|Linux (6.2.1-arch1-1)|clang|82.840|23.588|[85](https://github.com/inv2004/bench_nim_build/issues/85)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.15.15-76051515-generic)|clang|90.329|25.420|[53](https://github.com/inv2004/bench_nim_build/issues/53)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.16.4-zen1-1-zen)|gcc|92.287|25.471|[64](https://github.com/inv2004/bench_nim_build/issues/64)
Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz|16|Linux (5.8.0-53-generic)|gcc|93.806|29.298|[28](https://github.com/inv2004/bench_nim_build/issues/28)
AMD Ryzen 7 3700X 8-Core Processor|16|Linux (5.15.5-arch1-1.1)|gcc|96.414|29.405|[36](https://github.com/inv2004/bench_nim_build/issues/36)
AMD EPYC 7502P 32-Core Processor|64|Linux (5.4.0-94-generic)|gcc|98.760|31.569|[55](https://github.com/inv2004/bench_nim_build/issues/55)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (19.6.0)|clang|103.230|27.537|[12](https://github.com/inv2004/bench_nim_build/issues/12)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (21.2.0)|clang|106.140|27.187|[50](https://github.com/inv2004/bench_nim_build/issues/50)
AMD Ryzen 9 3950X 16-Core Processor|32|Linux (4.4.0-19041-Microsoft WSL)|gcc|98.574|35.247|[15](https://github.com/inv2004/bench_nim_build/issues/15)
Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz|32|Linux (5.4.0-51-generic)|gcc|102.739|33.637|[7](https://github.com/inv2004/bench_nim_build/issues/7)
AMD Ryzen 9 5900HX with Radeon Graphics|16|Linux (5.10.16.3-microsoft-standard-WSL2)|gcc|103.607|34.890|[80](https://github.com/inv2004/bench_nim_build/issues/80)
AMD Ryzen 5 5600H with Radeon Graphics|12|Linux (5.11.0-25-generic)|gcc|107.166|34.038|[32](https://github.com/inv2004/bench_nim_build/issues/32)
Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz|12|Linux (5.11.21_1)|gcc|109.583|36.083|[27](https://github.com/inv2004/bench_nim_build/issues/27)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.15.15-76051515-generic)|gcc|111.986|35.919|[51](https://github.com/inv2004/bench_nim_build/issues/51)
11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz|12|Linux (6.4.12-zen1-1-zen)|gcc|113.690|38.408|[89](https://github.com/inv2004/bench_nim_build/issues/89)
Intel Xeon Processor (Cascadelake)|32|Linux (5.4.0-94-generic)|gcc|115.877|38.411|[56](https://github.com/inv2004/bench_nim_build/issues/56)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.16.0-051600-generic)|gcc|117.844|36.707|[57](https://github.com/inv2004/bench_nim_build/issues/57)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.15.6-arch2-1)|gcc|118.803|36.275|[30](https://github.com/inv2004/bench_nim_build/issues/30)
AMD Ryzen 7 4700U with Radeon Graphics|8|Linux (5.16.1-xanmod1)|gcc|118.317|38.841|[42](https://github.com/inv2004/bench_nim_build/issues/42)
AMD Ryzen 5 PRO 5650U with Radeon Graphics|12|Linux (6.2.1-arch1-1)|gcc|118.021|39.258|[84](https://github.com/inv2004/bench_nim_build/issues/84)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.15.14-xanmod1)|gcc|121.605|38.117|[45](https://github.com/inv2004/bench_nim_build/issues/45)
Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz|12|Linux (5.4.0-97-generic)|gcc|124.616|37.084|[66](https://github.com/inv2004/bench_nim_build/issues/66)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.12.4-arch1-2)|gcc|121.251|40.853|[14](https://github.com/inv2004/bench_nim_build/issues/14)
AMD Ryzen 7 4700U with Radeon Graphics|8|Linux (5.16.1-xanmod1)|gcc|128.098|41.172|[41](https://github.com/inv2004/bench_nim_build/issues/41)
Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz|8|Linux (5.7.10)|gcc|132.834|37.958|[40](https://github.com/inv2004/bench_nim_build/issues/40)
11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz|8|Linux 6.10.3-arch1-1|gcc|129.893|42.170|[95](https://github.com/inv2004/bench_nim_build/issues/95)
AMD Ryzen 5 PRO 5650U with Radeon Graphics|12|Linux (5.15.90.1-microsoft-standard-WSL2)|gcc|125.261|47.615|[88](https://github.com/inv2004/bench_nim_build/issues/88)
AMD Ryzen 5 PRO 5650U with Radeon Graphics|12|Linux (5.10.102.1-microsoft-standard-WSL2)|gcc|130.875|43.564|[86](https://github.com/inv2004/bench_nim_build/issues/86)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.60.1-microsoft-standard-WSL2)|clang|138.672|36.898|[60](https://github.com/inv2004/bench_nim_build/issues/60)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.4.72-microsoft-standard-WSL2)|gcc|135.763|42.155|[49](https://github.com/inv2004/bench_nim_build/issues/49)
Intel(R) Core(TM) i5-7600K CPU @ 3.80GHz|4|Darwin (20.6.0)|clang|155.772|36.878|[35](https://github.com/inv2004/bench_nim_build/issues/35)
Intel(R) Xeon(R) CPU E5-4657L v2 @ 2.40GHz|96|Linux (5.10.32-calculate)|clang|156.965|42.078|[73](https://github.com/inv2004/bench_nim_build/issues/73)
QEMU (AMD Ryzen 5 1600)|8|Darwin (19.6.0)|clang|158.771|42.652|[13](https://github.com/inv2004/bench_nim_build/issues/13)
AMD Ryzen 5 1600 Six-Core Processor|12|Linux (5.12.4-arch1-2)|gcc|156.267|48.535|[6](https://github.com/inv2004/bench_nim_build/issues/6)
Intel(R) Xeon(R) CPU E5-4657L v2 @ 2.40GHz|96|Linux (5.10.32-calculate)|gcc|156.307|52.813|[72](https://github.com/inv2004/bench_nim_build/issues/72)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.36-2-MANJARO)|gcc|168.011|52.299|[10](https://github.com/inv2004/bench_nim_build/issues/10)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.13.13-1070.native)|gcc|168.498|52.283|[37](https://github.com/inv2004/bench_nim_build/issues/37)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.60.1-microsoft-standard-WSL2)|gcc|169.890|54.009|[38](https://github.com/inv2004/bench_nim_build/issues/38)
Intel(R) Core(TM) i5-8259U CPU @ 2.30GHz|8|Darwin (20.4.0)|clang|188.181|48.974|[8](https://github.com/inv2004/bench_nim_build/issues/8)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|8|Linux (5.8.0-53-generic)|gcc|183.852|57.175|[26](https://github.com/inv2004/bench_nim_build/issues/26)
Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz|8|Darwin (21.1.0)|clang|196.004|45.958|[33](https://github.com/inv2004/bench_nim_build/issues/33)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Microsoft Windows 10 Pro (10.0.19042)|gcc|231.54|51.79|[2](https://github.com/inv2004/bench_nim_build/issues/2)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|6|Microsoft Windows 10 Home   (10.0.19043  )|gcc|231.51|55.12|[48](https://github.com/inv2004/bench_nim_build/issues/48)
Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz|6|Windows 10 Pro   (10.0.19042  )|gcc|238.43|54.74|[31](https://github.com/inv2004/bench_nim_build/issues/31)
AMD Ryzen 5 2600 Six-Core Processor|6|Windows 10 (10.0.19045)|gcc|244.52|53.51|[81](https://github.com/inv2004/bench_nim_build/issues/81)
AMD Ryzen 5 5500U with Radeon Graphics|6|Windows 10 Pro (10.0.19044)|gcc|285.66|63.22|[82](https://github.com/inv2004/bench_nim_build/issues/82)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|4|Microsoft Windows 10 Pro   (10.0.19042  )|gcc|288.06|72.12|[16](https://github.com/inv2004/bench_nim_build/issues/16)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|4|Linux (5.10.36-2-MANJARO)|gcc|298.918|93.888|[9](https://github.com/inv2004/bench_nim_build/issues/9)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|2|Microsoft Windows 10 Pro   (10.0.19042  )|gcc|370.44|92.67|[4](https://github.com/inv2004/bench_nim_build/issues/4)
Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz|4|Linux (5.4.72-microsoft-standard-WSL2)|gcc|397.34|140.62|[5](https://github.com/inv2004/bench_nim_build/issues/5)
Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz|2|Linux (5.4.0-1100-azure)|gcc|476.165|168.380|[77](https://github.com/inv2004/bench_nim_build/issues/77)
Intel(R) Celeron(R) CPU N3350 @ 1.10GHz|2|Linux (5.11.16-arch1-1)|gcc|905.112|292.001|[11](https://github.com/inv2004/bench_nim_build/issues/11)
Intel(R) Atom(TM) CPU N270   @ 1.60GHz|2|Linux (4.15.0-142-generic)|gcc|3258.861|1172.002|[43](https://github.com/inv2004/bench_nim_build/issues/43)

# Run here

**Plug power-cable if you have laptop!**

**It needs git and gcc(mingw) or clang to run it**

After run it will open browser to add the results into the repo automatically

## Warning
The script deletes `koch_d` `nim_r` `nimble_r` `nimgrep_r` `nimpretty_r` `nimsuggest_r` `testament_r` from Nim's cache

## Linux
```bash
curl -O https://raw.githubusercontent.com/inv2004/bench_nim_build/main/nimbench.sh
bash nimbench.sh
```
or if you have clang
```
bash nimbench.sh CC=clang
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
