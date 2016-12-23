# macOS Sierra (10.12.1) on the Dell XPS 15 (9550)
This repository contains **my own files** on the installation and configuration of macOS Sierra (10.12.1) on the Dell XPS 15 (9550)

* Thanks to this [guide][1] and its participants. 
* Also, thanks darkhandz for [his Sierrra guide](https://github.com/darkhandz/XPS15-9550-Sierra). Please read darkhandz's guide before you use my files.
* Thanks syscl for HDMI/DP Audio Ouptut. (I haven't test the output)
* I use [RehabMan's method](http://www.insanelymac.com/forum/topic/312803-patch-for-using-nvme-under-macos-sierra-is-ready/page-29#entry2322636) that allows vanilla `IONVMeFamily.kext` to co-exist with `HackrNVMeFamily*.kext`. Notify that the path of SSD in PCI0 is varied from different devices. Mine is `_SB.PCI0.RP09.PXSX`. Read the tutorial carefully before you use this method.

> **New branch** - `dev`: Use `MacBookPro13,3` SMBIOS with @syscl's `FakeSMBIOS.kext`.
>
> * Note that I can't use ThunberBolt3/Type-C in this config.
> * The model identifier is still wrong (e.g, `MacBookPro1`) , but that in IOReg is correct.
> * I hide my serial number as `C02S****H03M`, you may generate it by your own.
## Structure
* `CLOVER`: Clover EFI folder.
* `Kexts`: Kexts which should be installed in `S/L/E` or `L/E`.

## My laptop
Dell XPS 9550

* i5-6300HQ/HM170
* Nvidia GTX960M / HD530
* 1920x1080 (FHD)
* DDR4 2133 16G (8G x 2)
* Dell wireless 1830 (BCM43602 + BCM20703A1 )
* 512GB NVMe SSD (Samsung SM951) + 1TB HDD (WD-Blue)

## Status

I use `MB9,1` SMBIOS, and has enabled Speed Shift (thanks for goodwin_c).

**Working**

* 97% of the system

**Not working**

* TB3/type-C port stiil can't hot-plug. (Waiting for good news from goodwin_c)
    * I find that my TB3-DP adapter can hot-plug and the 4K external monitor works fine. Need more test.
* SD card reader

## Tips

To make external monitor works (if you use `iMac17,1` SMBIOS), you should do following steps:

1. Open `/System/Library/Extensions/AppleGraphicsControl.kext/Contents/PlugIns/AppleGraphicsDevicePolicy.kext/Contents/Info.plist`.
2. Find the Borad-ID which used in your config.plist such as "Mac-B809C3757DA9BB8D" or "Mac-65CE76090165799A" or "Mac-DB15BD556843C820".
3. Replace the attribute `Config2` with `none`
4. Execute commands `sudo kextcache -system-prelinked-kernel` and `sudo kextcache -system-caches`.
5. Reboot and everything is done.

   [1]:http://www.tonymacx86.com/threads/guide-wip-dell-xps-15-9550-skylake-gtx960m-ssd-via-clover-uefi.192598/
