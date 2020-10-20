# Root files


1>Unlock Bootloader.

2>Enable Usb Debugging.

3>Download the root.zip.





Method 1(Recommended)-
1. Run the root.bat file
2. And press any key to continue to next step




Method 2(Manual)-
1. adb reboot bootloader
2. fastboot flash boot magisk_bxx.img
3. fastboot --disable-verity -disable-verification flash vbmeta vbmeta.img
4. fastboot reboot




Note*-
We are not responsible if you brick you device.
Because it is your fault for sure.
