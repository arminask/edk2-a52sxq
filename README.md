# EDK2 UEFI firmware for Qualcomm Snapdragon platforms

## Problems

Doesn't boot, shows this error:

![Error](error.png)


Probably memory map is incorrect, location of the file that possibly needs modifying:
```
Silicon/Qualcomm/sm7325/Library/PlatformMemoryMapLib/PlatformMemoryMapLib.c
```

Older EDK2 UEFI repo that boots UEFI shell on a52sxq, but nothing works:
[edk2-SMA528B](https://github.com/arminask/edk2-SMA528B)
