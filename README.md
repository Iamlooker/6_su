# Realme 6 Root files


1>Unlock Bootloader by .

2>Enable Usb Debugging.

3>Download the root.zip.





Method 1(Recommended)-
Run the root.bat file
And press any key to continue to next step




Method 2(Manual)-
adb reboot bootloader
fastboot flash boot magisk_bxx.img
fastboot --disable-verity -disable-verification flash vbmeta vbmeta.img
fastboot reboot




Note*-
We are not responsible if you brick you device.
Because it is your fault for sure.
