# OS X El Capitan (10.11.6) on the Dell XPS 15 (9550)
This repository contains **my own files** on the installation and configuration of OS X El Capitan (10.11.5) on the Dell XPS 15 (9550)

Thanks to the [guide][1] and its participants.

## Structure
* `CLOVER`: Clover EFI folder.
* `DSL`: DSL files for patched DSDT and SSDT.
* `Kexts`: Kexts which should be installed in S/L/E.

## My laptop
Dell XPS 9550 , CPU: i5-6300HQ/HM170, Nvidia GTX960M / HD530, 1920x1080 (FHD), DDR4 2133 16G (8G x 2), Dell wireless 1830 (BCM43602 + BCM20703A1 ), 512GB NVMe SSD (Samsung SM951), 1TB HDD (WD-Blue)

## Tips
To make external monitor works (since I use `iMac17,1` SMBIOS), you should do following steps:

1. Open `/System/Library/Extensions/AppleGraphicsControl.kext/Contents/PlugIns/AppleGraphicsDevicePolicy.kext/Contents/Info.plist`.
2. Find the Borad-ID which used in your config.plist such as "Mac-B809C3757DA9BB8D" or "Mac-65CE76090165799A" or "Mac-DB15BD556843C820".
3. Replace the attribute `Config2` with `none`
4. Execute commands `sudo kextcache -system-prelinked-kernel` and `sudo kextcache -system-caches`.
5. Reboot and everything is done.

[1]:	http://www.tonymacx86.com/threads/guide-wip-dell-xps-15-9550-skylake-gtx960m-ssd-via-clover-uefi.192598/
