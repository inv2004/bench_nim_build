@echo off

rmdir /S /Q ~\nimcache\nim_r
rmdir /S /Q ~\nimcache\nimble_r
rmdir /S /Q ~\nimcache\nimgrep_r
rmdir /S /Q ~\nimcache\nimpretty_r
rmdir /S /Q ~\nimcache\nimsuggest_r
rmdir /S /Q ~\nimcache\testament_r

set DIR=benchnim

mkdir %DIR%
cd %DIR%

dir
if not exist NimCloned (
  Call :Prep
)

del time.log
Call :CollectInfo

@REM rmdir /Q /S Nim
@echo on
@REM Robocopy.exe /NFL /NDL /ETA /E NimCloned Nim
@echo off
cd Nim
@REM Call :Bench .\build_all.bat
@REM Call :Bench .\koch.exe temp -d:release
Call :Bench ls
Call :Bench ls .
cd ..
type time.log
cd ..

exit /B %ERRORLEVEL%

:Bench
SETLOCAL

echo Bench %*

set start=%time%

:: Runs your command
cmd /c %*

set end=%time%

set options="tokens=1-4 delims=:.,"
for /f %options% %%a in ("%start%") do set start_h=%%a&set /a start_m=100%%b %% 100&set /a start_s=100%%c %% 100&set /a start_ms=100%%d %% 100
for /f %options% %%a in ("%end%") do set end_h=%%a&set /a end_m=100%%b %% 100&set /a end_s=100%%c %% 100&set /a end_ms=100%%d %% 100

set /a hours=%end_h%-%start_h%
set /a mins=%end_m%-%start_m%
set /a secs=%end_s%-%start_s%
set /a ms=%end_ms%-%start_ms%
if %ms% lss 0 set /a secs = %secs% - 1 & set /a ms = 100%ms%
if %secs% lss 0 set /a mins = %mins% - 1 & set /a secs = 60%secs%
if %mins% lss 0 set /a hours = %hours% - 1 & set /a mins = 60%mins%
if %hours% lss 0 set /a hours = 24%hours%
if 1%ms% lss 100 set ms=0%ms%

:: Mission accomplished
set /a totalsecs = %hours%*3600 + %mins%*60 + %secs%
echo %totalsecs%.%ms%s seconds: %* >> ..\time.log
exit /B %ERRORLEVEL%

:Prep
  git clone https://github.com/Nim-lang/Nim NimCloned
  cd NimCloned
  git reset --hard fac5bae7b7d87aeec48c7252029c2852ee157ac9

  for /f "delims== tokens=1,2" %%G in (config/build_config.txt) do set %%G=%%H
  SET nim_csources=bin\nim_csources_%nim_csourcesHash%.exe

  if not exist %nim_csourcesDir% (
    git clone -q --depth 1 %nim_csourcesUrl% %nim_csourcesDir%
  )

  if not exist %nim_csources% (
    cd %nim_csourcesDir%
    git checkout %nim_csourcesHash%
    cd ..
  )
  cd ..
exit /B %ERRORLEVEL%

:CollectInfo
wmic CPU get Name,CurrentClockSpeed,NumberOfCores /VALUE >> time.log
wmic ComputerSystem get TotalPhysicalMemory /VALUE >> time.log
wmic MemoryChip get Speed /VALUE >> time.log
exit /B %ERRORLEVEL%
