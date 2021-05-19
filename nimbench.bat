@echo off

del ~\nimcache\koch_d
del ~\nimcache\nim_r
del ~\nimcache\nimble_r
del ~\nimcache\nimgrep_r
del ~\nimcache\nimpretty_r
del ~\nimcache\nimsuggest_r
del ~\nimcache\testament_r

set DIR=benchnim

mkdir %DIR%
cd %DIR%

dir
if not exist NimCloned (
  Call :Prep
)

cd NimCloned
Call :Bench ls
Call :Bench ls -al
cd ..
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
echo command took %hours%:%mins%:%secs%.%ms% (%totalsecs%.%ms%s total)
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
