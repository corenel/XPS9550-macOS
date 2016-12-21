#!/bin/bash

path=${0%/*}
echo Uninstalling VoodooPS2Daemon
sudo rm -rf /usr/bin/VoodooPS2Daemon
sudo rm -rf /Library/LaunchDaemons/org.rehabman.voodoo.driver.Daemon.plist
sudo rm -rf /System/Library/Extensions/VoodooPS2Controller.kext /System/Library/Extensions/VoodooPS2Controller.kext.bak