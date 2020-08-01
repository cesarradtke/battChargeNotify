on run
	set theBattString to (do shell script "pmset -g batt | tr -s '	;' ' '")
	set battCycle to (do shell script "system_profiler SPPowerDataType | grep 'Cycle Count' | awk '{print $3}'")

	set batteryLevel to splitText(theBattString, space)
	

	tell application "System Events"
		set battCharge to item 8 of batteryLevel
		set chargeStatus to item 9 of batteryLevel
		
		if chargeStatus = "charging" then
			if battCharge > 90 then
				do shell script "afplay /System/Library/Sounds/Hero.aiff
				display alert "Battery charge reach " & battCharge & " and still " & chargeStatus & ". Consider unplug AC adapter to prevent count a charge cycle. 

 Currently your Mac reached " & battCycle & " cycles."
				
			end if
		end if
	end tell
end run

on splitText(theText, theDelimiter)
	set AppleScript's text item delimiters to theDelimiter
	set theTextItems to every text item of theText
	set AppleScript's text item delimiters to ""
	return theTextItems
end splitText
