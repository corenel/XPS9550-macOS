# OS X El Capitan (10.11.4) on the Dell XPS 15 (9550)
This repository contains **my own files** on the installation and configuration of OS X El Capitan (10.11.4) on the Dell XPS 15 (9550)

Thanks to the [guide][1] and its participants.

## Structure
* `CLOVER`: Clover EFI folder.
* `DSL`: DSL files for DSDT and SSDT.
* `Kexts`: Kexts installed in S/L/E.

## Tips
To make external monitor works (since I use `iMac17,1` SMBIOS), you should do following steps:
1. Open `/System/Library/Extensions/AppleGraphicsControl.kext/Contents/PlugIns/AppleGraphicsDevicePolicy.kext/Contents/Info.plist`.
2. Find the Borad-ID which used in your config.plist such as "Mac-B809C3757DA9BB8D" or "Mac-65CE76090165799A" or "Mac-DB15BD556843C820".
3. Replace the attribute `Config2` with `none`
4. Execute commands `sudo kextcache -system-prelinked-kernel` and `sudo kextcache -system-caches`.
5. Reboot and everything is done.

[1]:	http://www.tonymacx86.com/threads/guide-wip-dell-xps-15-9550-skylake-gtx960m-ssd-via-clover-uefi.192598/