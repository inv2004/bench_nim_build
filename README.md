# build_nim_benchmarks

Tool to benchmark [Nim](https://github.com/nim-lang/Nim) compile time

# Results

CPU                                      | Cores | Freq         | Ram         | Disk               | OS                                        | build_all (s) | koch temp (s)
-----------------------------------------|-------|--------------|-------------|--------------------|-------------------------------------------|---------------|---------------
| Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz | 32    | 2693.672 MHz | 62Gi        |                    | Linux (5.4.0-51-generic)                  | 102.739       | 33.637        |       
| AMD Ryzen 5 1600 Six-Core Processor      | 12    | 1550.000 MHz | 15Gi        |                    | Linux (5.12.4-arch1-2)                    | 156,267       | 48,535        |       
| Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz  | 4     | 2925.528 MHz | 15Gi        | SanDisk Cruzer     | Linux (5.10.36-2-MANJARO)                 | 168.011       | 52.299        |       
| Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz  | 4     | 3407.999 MHz | 12Gi        | Msft Virtual Disk  | Linux (5.4.72-microsoft-standard-WSL2)    | 172.88        | 55.53         |       
| Intel(R) Core(TM) i5-8259U CPU @ 2.30GHz | 8     | 2300         | 2147483648  | APPLE SSD AP0512M  | Darwin (20.4.0)                           | 188.181       | 48.974        |       
| Macmini9,1                               | 8     | grep         | 3657728000  |                    |                                           | 206.53        | 67.27         |       
| Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz  | 4     | 3401         | 17133088768 | KingFast           | Microsoft Windows 10 Pro                  | 231.54        | 51.79         |       
| Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz | 4     | 1781.819 MHz | 11Gi        | SanDisk Cruzer     | Linux (5.10.36-2-MANJARO)                 | 298.918       | 93.888        |       
| Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz | 2     | 2396         | 12733321216 | XPG GAMMIX S11 Pro | Microsoft Windows 10 Pro   (10.0.19042  ) | 370.44        | 92.67         |       
| Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz | 4     | 2496.000 MHz | 9.2Gi       | Msft Virtual Disk  | Linux (5.4.72-microsoft-standard-WSL2)    | 397.34        | 140.62        

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
