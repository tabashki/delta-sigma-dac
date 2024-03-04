@echo off
pushd %~dp0
setlocal

set BOARDNAME=DSDAC
set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"

md jlcpcb
cd jlcpcb

copy ..\TOP.art "%BOARDNAME%.TOP"
copy ..\BOT.art "%BOARDNAME%.BOT"
copy ..\FAB.art "%BOARDNAME%.FAB"
copy ..\SST.art "%BOARDNAME%.SST"
copy ..\SSB.art "%BOARDNAME%.SSB"
copy ..\SMB.art "%BOARDNAME%.SMB"
copy ..\SMT.art "%BOARDNAME%.SMT"
copy ..\delta_sigma_dac-1-2.drl "%BOARDNAME%.TAP"

"%SEVENZIP%" a "%BOARDNAME%_V0.1.ZIP" "%BOARDNAME%.TOP" "%BOARDNAME%.BOT" "%BOARDNAME%.FAB" "%BOARDNAME%.SST" "%BOARDNAME%.SSB" "%BOARDNAME%.SMB" "%BOARDNAME%.SMT" "%BOARDNAME%.TAP"

endlocal & popd