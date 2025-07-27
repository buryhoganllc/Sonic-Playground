--
--	Created by: BRENDAN HOGAN
--	Created on: 7/23/25
--
--	Copyright © 2025 Bury, Hogan & Associates LLC, All Rights Reserved
--
--  Create Power Manager event for repeated runs, using minutes offset

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell application "Power Manager"
	
	-- Set inclusive start and end hours (24 hour notation)
	set startingHour to 10 -- 10am
	set endingHour to 18 -- 6pm
	
	-- Set days of the week to trigger
	set daysOfTheWeek to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
	
	set secondsPerHour to (60 * 60)
	set minutesOffset to 45 -- adjust this to change the offset in minutes (e.g., 15 for 15 minutes)
	set secondsOffset to minutesOffset * 60
	
	-- Create the event in the workshop 
	tell workshop
		
		-- Create a new event
		set myEvent to make new event with properties {name:"Hourly event with minute offset"}
		
		-- Create a new trigger for every hour within the range, offset by 45 minutes
		repeat with i from 0 to 23
			if i ≥ startingHour and i ≤ endingHour then
				set triggerTime to (i * secondsPerHour) + secondsOffset
				make new trigger daily with properties {seconds from midnight:triggerTime, days:daysOfTheWeek} at front of triggers of myEvent
			end if
		end repeat
		
	end tell
	
	-- Deploy the event
	tell event store to store these events myEvent
	
	-- Clean up the workshop
	empty workshop
	
end tell
