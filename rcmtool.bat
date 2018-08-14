@echo off 
title TegraRCM tool v1 by Midstor
echo TegraRCM tool by Midstor
echo TegraRCMSmasher not by midstor (backend software for payloads)
echo Status: Ready
echo SX OS = Selection 1
echo Hekate = Selection 2
echo ReiNX = Selection 3
set /p payload=Payload Selection:
if "%payload%"=="1" goto sxos
if "%payload%"=="2" goto hekate
if "%payload%"=="3" goto ReiNX
goto error

:error
echo Please select a selection, closing software...
pause
:ReiNX
cls
echo Loading ReiNX... Please wait
echo Starting TegraRCMsmash...
TegraRcmSmash.exe ReiNX.bin
echo Finished launching ReiNX
pause
exit
:sxos
cls
echo Loading SXOS... Please wait
echo Starting TegraRCMsmash...
TegraRcmSmash.exe sxos.bin
echo Finished launching SX OS!
pause
exit
:hekate
cls
echo Loadng SXOS... Please wait
echo Starting TegraRCMsmash...
TegraRcmSmash.exe hekate_ctcaer_3.2.bin
echo Finsihed launching Hekate Ctcaer
pause
exit