 
@ECHO OFF
ECHO NOTE* - EVERYTHING YOU DO NOW ONWARDS IS AT YOUR OWN RISK*
ECHO ENABLE USB Debugging
PAUSE
adb reboot bootloader
PAUSE
fastboot devices
ECHO If you device is not showing contact in group.
PAUSE
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
PAUSE


@ECHO off

cls
:start
ECHO.
ECHO 1. B41
ECHO 2. B45
ECHO 3. B47
ECHO 4. B33
set choice=
set /p choice=Select the version.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 41
if '%choice%'=='2' goto 45
if '%choice%'=='3' goto 47
if '%choice%'=='4' goto 33
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:41
fastboot flash boot magisk_41.img
goto end
:45
fastboot flash boot magisk_45.img
goto end
:47
fastboot flash boot magisk_47.img
goto end
:33
fastboot flash boot magisk_33.img
goto end
:end
pause

fastboot reboot
ECHO Enjoy root!!
PAUSE