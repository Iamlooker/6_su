 
 
@ECHO OFF
ECHO NOTE* - EVERYTHING YOU DO NOW ONWARDS IS AT YOUR OWN RISK*
ECHO ENABLE USB Debugging
PAUSE
adb reboot bootloader
PAUSE
ECHO Checking Devices
fastboot devices
ECHO If you device is not showing contact in group.
PAUSE
ECHO Disablibg dm-verity
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
PAUSE


@ECHO off

cls
:start
ECHO.
ECHO Which of the following version matches your phones Version?
ECHO 1. B41
ECHO 2. B45
ECHO 3. B47
ECHO 4. B33
ECHO 5. B49
set choice=
set /p choice=Select the version.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto 41
if '%choice%'=='2' goto 45
if '%choice%'=='3' goto 47
if '%choice%'=='4' goto 33
if '%choice%'=='5' goto 49
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:41
ECHO Flashing Magisk for B41...
fastboot flash boot magisk_b41.img
goto end
:45
ECHO Flashing Magisk for B45...
fastboot flash boot magisk_b45.img
goto end
:47
ECHO Flashing Magisk for B47...
fastboot flash boot magisk_b47.img
goto end
:33
ECHO Flashing Magisk for B33...
fastboot flash boot magisk_b33.img
goto end
:47
ECHO Flashing Magisk for B49...
fastboot flash boot magisk_b49.img
goto end
:end
pause

fastboot reboot
ECHO Enjoy root!!
PAUSE
