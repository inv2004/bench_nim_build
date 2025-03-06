# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

**Blog post:** [https://t.me/inv2004_dev_blog/43](https://t.me/s/inv2004_dev_blog/43)

# Update
Now it supports `nimbench.sh CC=clang` on Linux and `nimbench.sh CC=gcc` on MacOS

Because nim has separate params for `cc` and `cc.exe` you can set specific CC executable by `nimbench.sh CC=gcc CC_EXE=gcc-12`

# Run [here](#run-here-1)

# Results

Sorted by build_all+koch_temp

CPU|Cores|OS|Cc|build_all(s)|koch temp(s)|Link
---|-----|--|--|------------|------------|----
Apple M4 Max|16|Darwin 24.3.0|clang|32.962|8.851|[99](https://github.com/inv2004/bench_nim_build/issues/99)
Apple M4 Pro|14|Darwin 24.3.0|clang|34.293|9.153|[126](https://github.com/inv2004/bench_nim_build/issues/126)
Apple M2 Max|12|Darwin (23.0.0)|clang|43.026|11.732|[92](https://github.com/inv2004/bench_nim_build/issues/92)
AMD Ryzen 5 9600X 6-Core Processor|12|Linux 6.11.0-8-generic|clang|43.483|12.345|[138](https://github.com/inv2004/bench_nim_build/issues/138)
Intel(R) Core(TM) Ultra 7 155H|22|Linux 6.13.4-2-cachyos|clang|45.624|12.965|[136](https://github.com/inv2004/bench_nim_build/issues/136)
Apple M2 Pro|12|Darwin 23.0.0|clang|48.826|13.208|[93](https://github.com/inv2004/bench_nim_build/issues/93)
AMD Ryzen 7 5800X3D 8-Core Processor|16|Linux 6.6.72-1-lts|clang|50.282|13.071|[129](https://github.com/inv2004/bench_nim_build/issues/129)
M2||Linux 6.12.0-1004-asahi-arm|clang|49.625|15.293|[135](https://github.com/inv2004/bench_nim_build/issues/135)
Apple M1 Max|10|Darwin (21.2.0)|clang|51.547|13.901|[44](https://github.com/inv2004/bench_nim_build/issues/44)
AMD Ryzen 5 9600X 6-Core Processor|12|Linux 5.15.167.4-microsoft-standard-WSL2|clang|50.681|15.465|[132](https://github.com/inv2004/bench_nim_build/issues/132)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 6.13.1-1-default|clang|52.725|14.464|[111](https://github.com/inv2004/bench_nim_build/issues/111)
Apple M1 Pro|8|Darwin 23.2.0|clang|53.328|14.788|[94](https://github.com/inv2004/bench_nim_build/issues/94)
Apple M1 Pro|10|Darwin (21.1.0)|clang|53.981|14.773|[34](https://github.com/inv2004/bench_nim_build/issues/34)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 5.15.167.4-microsoft-standard-WSL2|clang|55.382|14.341|[110](https://github.com/inv2004/bench_nim_build/issues/110)
Qualcomm Snapdragon X Elite (X1E-78-100)|12|Linux 6.6.36.6-microsoft-standard-WSL2+|clang|52.380|17.611|[114](https://github.com/inv2004/bench_nim_build/issues/114)
Qualcomm Snapdragon X Elite (X1E-78-100)|12|Linux 6.12.0-22-qcom-x1e|clang|54.257|16.102|[113](https://github.com/inv2004/bench_nim_build/issues/113)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 6.13.0-2-cachyos|clang|55.545|14.893|[108](https://github.com/inv2004/bench_nim_build/issues/108)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 5.15.133.1-microsoft-standard-WSL2|clang|56.206|15.657|[109](https://github.com/inv2004/bench_nim_build/issues/109)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 6.12.11_1|clang|57.675|15.594|[107](https://github.com/inv2004/bench_nim_build/issues/107)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.4.0-92-generic)|clang|59.340|15.184|[71](https://github.com/inv2004/bench_nim_build/issues/71)
AMD Ryzen 7 5700X 8-Core Processor|16|Linux 6.13.5-200.fc41.x86_64|clang|58.916|16.101|[139](https://github.com/inv2004/bench_nim_build/issues/139)
Apple M1 Pro|8|Darwin (21.2.0)|clang|59.777|15.823|[46](https://github.com/inv2004/bench_nim_build/issues/46)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 6.8.0-41-generic|clang|59.900|16.025|[115](https://github.com/inv2004/bench_nim_build/issues/115)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.15.57.1-microsoft-standard-WSL2)|clang|61.112|16.982|[75](https://github.com/inv2004/bench_nim_build/issues/75)
13th Gen Intel(R) Core(TM) i7-13700HX|16|Linux 6.8.0-52-generic|clang|61.696|17.757|[102](https://github.com/inv2004/bench_nim_build/issues/102)
12th Gen Intel(R) Core(TM) i7-12800HX|24|Linux 5.15.167.4-microsoft-standard-WSL2|clang|59.523|20.623|[133](https://github.com/inv2004/bench_nim_build/issues/133)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.4.0-92-generic)|gcc|63.551|16.777|[39](https://github.com/inv2004/bench_nim_build/issues/39)
2xIntel(R) Xeon(R) Gold 6248 CPU @ 2.50GHz|80|Linux 6.12.6-1-cachyos-p920-perf|clang|63.528|17.895|[100](https://github.com/inv2004/bench_nim_build/issues/100)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.10.60.1-microsoft-standard-WSL2)|clang|66.003|16.310|[69](https://github.com/inv2004/bench_nim_build/issues/69)
Apple M2|8|Darwin 24.0.0|clang|66.800|18.538|[96](https://github.com/inv2004/bench_nim_build/issues/96)
Apple M1|8|Darwin (20.3.0)|clang|66.326|19.451|[25](https://github.com/inv2004/bench_nim_build/issues/25)
AMD Ryzen Threadripper PRO 3995WX 64-Cores|128|Linux (5.15.16-200.fc35.x86_64)|clang|68.173|19.186|[62](https://github.com/inv2004/bench_nim_build/issues/62)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.16.4-zen1-1-zen)|clang|71.719|17.792|[65](https://github.com/inv2004/bench_nim_build/issues/65)
AMD Ryzen Threadripper PRO 3995WX 64-Cores|128|Linux (5.15.16-200.fc35.x86_64)|gcc|70.157|21.928|[61](https://github.com/inv2004/bench_nim_build/issues/61)
Apple M4 Max|16|Darwin 24.3.0|gcc|68.059|26.378|[122](https://github.com/inv2004/bench_nim_build/issues/122)
11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz|12|Linux (6.4.12-zen1-1-zen)|clang|73.786|21.218|[90](https://github.com/inv2004/bench_nim_build/issues/90)
Intel(R) Core(TM) Ultra 7 155H|22|Linux 6.13.4-2-cachyos|gcc|71.710|24.561|[137](https://github.com/inv2004/bench_nim_build/issues/137)
AMD Ryzen 9 5950X 16-Core Processor|32|Linux (5.11.21_1)|gcc|72.756|24.163|[19](https://github.com/inv2004/bench_nim_build/issues/19)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.13.13-1070.native)|gcc|76.624|23.148|[68](https://github.com/inv2004/bench_nim_build/issues/68)
11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz|16|Linux (5.13.0-25-generic)|gcc|76.102|23.883|[47](https://github.com/inv2004/bench_nim_build/issues/47)
AMD Ryzen 7 3700X 8-Core Processor|16|Linux (5.15.5-arch1-1.1)|clang|78.940|21.280|[63](https://github.com/inv2004/bench_nim_build/issues/63)
Snapdragon 8 Elite||Linux 6.6.30-android15-8-gb5f0c188ea2a-ab12656338-4k|clang|76.608|26.461|[127](https://github.com/inv2004/bench_nim_build/issues/127)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.10.60.1-microsoft-standard-WSL2)|gcc|78.938|25.256|[70](https://github.com/inv2004/bench_nim_build/issues/70)
12th Gen Intel(R) Core(TM) i9-12900H|20|Linux (6.1.6-arch1-1)|gcc|81.791|23.859|[79](https://github.com/inv2004/bench_nim_build/issues/79)
12th Gen Intel(R) Core(TM) i9-12900H|20|Linux (6.1.6-arch1-1)|gcc|81.535|24.878|[78](https://github.com/inv2004/bench_nim_build/issues/78)
AMD Ryzen 5 PRO 5650U with Radeon Graphics|12|Linux (6.2.1-arch1-1)|clang|82.840|23.588|[85](https://github.com/inv2004/bench_nim_build/issues/85)
AMD Ryzen 7 5800X3D 8-Core Processor|16|Linux 6.6.72-1-lts|gcc|83.786|25.874|[128](https://github.com/inv2004/bench_nim_build/issues/128)
M2||Linux 6.12.0-1004-asahi-arm|gcc|83.864|27.918|[134](https://github.com/inv2004/bench_nim_build/issues/134)
Qualcomm Snapdragon X Elite (X1E-78-100)|12|Linux 6.12.0-22-qcom-x1e|gcc|83.744|28.227|[112](https://github.com/inv2004/bench_nim_build/issues/112)
13th Gen Intel(R) Core(TM) i7-13700HX|16|Linux 6.8.0-52-generic|gcc|86.956|25.934|[101](https://github.com/inv2004/bench_nim_build/issues/101)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.15.15-76051515-generic)|clang|90.329|25.420|[53](https://github.com/inv2004/bench_nim_build/issues/53)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux 6.13.0-2-cachyos|gcc|89.252|28.269|[103](https://github.com/inv2004/bench_nim_build/issues/103)
12th Gen Intel(R) Core(TM) i5-12600|12|Linux (5.16.4-zen1-1-zen)|gcc|92.287|25.471|[64](https://github.com/inv2004/bench_nim_build/issues/64)
Intel(R) Core(TM) i9-9900K CPU @ 3.60GHz|16|Linux (5.8.0-53-generic)|gcc|93.806|29.298|[28](https://github.com/inv2004/bench_nim_build/issues/28)
AMD Ryzen 7 3700X 8-Core Processor|16|Linux (5.15.5-arch1-1.1)|gcc|96.414|29.405|[36](https://github.com/inv2004/bench_nim_build/issues/36)
12th Gen Intel(R) Core(TM) i5-12400|12|Linux 6.13.1-2-MANJARO|gcc|96.221|30.945|[98](https://github.com/inv2004/bench_nim_build/issues/98)
AMD EPYC 7502P 32-Core Processor|64|Linux (5.4.0-94-generic)|gcc|98.760|31.569|[55](https://github.com/inv2004/bench_nim_build/issues/55)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (19.6.0)|clang|103.230|27.537|[12](https://github.com/inv2004/bench_nim_build/issues/12)
Intel(R) Core(TM) i9-9880H CPU @ 2.30GHz|16|Darwin (21.2.0)|clang|106.140|27.187|[50](https://github.com/inv2004/bench_nim_build/issues/50)
AMD Ryzen 9 3950X 16-Core Processor|32|Linux (4.4.0-19041-Microsoft WSL)|gcc|98.574|35.247|[15](https://github.com/inv2004/bench_nim_build/issues/15)
AMD Ryzen 9 5900HX with Radeon Graphics|16|Linux (5.10.16.3-microsoft-standard-WSL2)|gcc|103.607|34.890|[80](https://github.com/inv2004/bench_nim_build/issues/80)
AMD Ryzen 5 5600H with Radeon Graphics|12|Linux (5.11.0-25-generic)|gcc|107.166|34.038|[32](https://github.com/inv2004/bench_nim_build/issues/32)
Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz|12|Linux (5.11.21_1)|gcc|109.583|36.083|[27](https://github.com/inv2004/bench_nim_build/issues/27)
Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz|12|Linux (5.15.15-76051515-generic)|gcc|111.986|35.919|[51](https://github.com/inv2004/bench_nim_build/issues/51)
11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz|12|Linux (6.4.12-zen1-1-zen)|gcc|113.690|38.408|[89](https://github.com/inv2004/bench_nim_build/issues/89)
Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz|8|Linux 6.13.4-200.fc41.x86_64|clang|118.982|33.341|[140](https://github.com/inv2004/bench_nim_build/issues/140)
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
11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz|8|Linux 6.10.12-200.fc40.x86_64|gcc|135.346|40.856|[97](https://github.com/inv2004/bench_nim_build/issues/97)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|12|Linux (5.4.72-microsoft-standard-WSL2)|gcc|135.763|42.155|[49](https://github.com/inv2004/bench_nim_build/issues/49)
Intel(R) Core(TM) i5-7600K CPU @ 3.80GHz|4|Darwin (20.6.0)|clang|155.772|36.878|[35](https://github.com/inv2004/bench_nim_build/issues/35)
Intel(R) Xeon(R) CPU E5-4657L v2 @ 2.40GHz|96|Linux (5.10.32-calculate)|clang|156.965|42.078|[73](https://github.com/inv2004/bench_nim_build/issues/73)
QEMU (AMD Ryzen 5 1600)|8|Darwin (19.6.0)|clang|158.771|42.652|[13](https://github.com/inv2004/bench_nim_build/issues/13)
Intel(R) Xeon(R) CPU E5-4657L v2 @ 2.40GHz|96|Linux (5.10.32-calculate)|gcc|156.307|52.813|[72](https://github.com/inv2004/bench_nim_build/issues/72)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.36-2-MANJARO)|gcc|168.011|52.299|[10](https://github.com/inv2004/bench_nim_build/issues/10)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.13.13-1070.native)|gcc|168.498|52.283|[37](https://github.com/inv2004/bench_nim_build/issues/37)
Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz|4|Linux (5.10.60.1-microsoft-standard-WSL2)|gcc|169.890|54.009|[38](https://github.com/inv2004/bench_nim_build/issues/38)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|8|Linux (5.8.0-53-generic)|gcc|183.852|57.175|[26](https://github.com/inv2004/bench_nim_build/issues/26)
Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz|8|Darwin (21.1.0)|clang|196.004|45.958|[33](https://github.com/inv2004/bench_nim_build/issues/33)
Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz|6|Microsoft Windows 10 Home   (10.0.19043  )|gcc|231.51|55.12|[48](https://github.com/inv2004/bench_nim_build/issues/48)
Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz|6|Windows 10 Pro   (10.0.19042  )|gcc|238.43|54.74|[31](https://github.com/inv2004/bench_nim_build/issues/31)
AMD Ryzen 5 2600 Six-Core Processor|6|Windows 10 (10.0.19045)|gcc|244.52|53.51|[81](https://github.com/inv2004/bench_nim_build/issues/81)
AMD Ryzen 5 5500U with Radeon Graphics|6|Windows 10 Pro (10.0.19044)|gcc|285.66|63.22|[82](https://github.com/inv2004/bench_nim_build/issues/82)
Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz|4|Microsoft Windows 10 Pro   (10.0.19042  )|gcc|288.06|72.12|[16](https://github.com/inv2004/bench_nim_build/issues/16)
Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz|4|Linux 6.12.11-200.fc41.x86_64|gcc|453.767|142.187|[131](https://github.com/inv2004/bench_nim_build/issues/131)
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
