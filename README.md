# macOS High Sierra (10.13.5) on the Dell XPS 15 (9550)
This repository contains **my own files** on the installation and configuration of macOS High Sierra (10.13.5) on the Dell XPS 15 (9550)

* Thanks darkhandz for [his High Sierrra guide](https://github.com/darkhandz/XPS15-9550-High-Sierra). Please read darkhandz's guide before you use my files.
* Use `MacBookPro13,3` SMBIOS, much thanks for @syscl.
  * The model identifier is also correct now.
  * I hide my serial number as `C02*****GTFN`, you may generate it by your own.
* `Caps` and `Left-Ctrl` is exchanged in `VoodoooPS2`, you can modify it if you don't like this keyboard layout.

## Structure
* `CLOVER`: Clover EFI folder.
* `Kexts`: Kexts which should be installed in `S/L/E` or `L/E`.

## My laptop
**Dell XPS 9550**

* i5-6300HQ/HM170
* Nvidia GTX960M / HD530
* 1920x1080 (FHD)
* DDR4 2133 16G (8G x 2)
* Dell wireless 1830 (BCM43602 + BCM20703A1 )
* 512GB NVMe SSD (Samsung SM951)
* BIOS Firmware 1.7.0

## Status

**Working**

* 98% of the system

**Not working**

* TB3/type-C port hot-plug maybe work.
    * I find that my TB3-DP adapter can hot-plug and the 4K external monitor works fine. Need more test.
    * Third-party tests say that DP hot-pluggin is also functioning fine.
    * My Nexus 6P is broken so I can't test.
* SD card reader (waiting for good news from [this post](http://www.insanelymac.com/forum/topic/321080-sineteks-driver-for-realtek-rtsx-sdhc-card-readers))


