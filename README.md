# battChargeCheck

Monitor battery charge to avoid counting a charge cycle.

macOS running at Macbooks consider Normal batteries until reach 1000 charge cycles, 

To prevent the cycle count being reached, it is recommended to unplug computer from AC with 80 or 90 percent charged. 

The purpose of this script is notify you when reach this mark, suggesting that you unplug to avoid reaching 100 percent charge and, consequently, counting a charge cycle.

Save the script file in ~/bin
Save the launcher file in ~/Library/LaunchAgents

execute:

launchctl unload ~/Library/LaunchAgents/com.cesarradtke.battChargeCheck

launchctl load ~/Library/LaunchAgents/com.cesarradtke.battChargeCheck

note: At the first time, you must permit execute script in System & Privacy.
