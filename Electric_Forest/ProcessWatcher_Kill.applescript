--         ProcessWatcher_Kill.applescript
--         Created by: Brendan Hogan
--         Created on: 11/6/24
--
--         Automated systems interruption and sleep/shut down procedure
--         for end-of-day triggering.
--         "Electric Forest" - a part of Sonic Playground. 
--         The GRAMMY Museum, Los Angeles. 2025.

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

-- stop the Process Watcher loop (if applicable)
-- if not using Process Watcher loop, delete/comment-out lines 16 through 28
-- also delete/comment-out Terminal quit command below
tell application "Terminal"
	activate -- bring to front for SIGTSTP
	delay 0.5
	tell application "System Events"
		key code {59, 8} -- emulate the control+c SIGINT 'kill' message
		-- key code {59, 6} -- emulate the control+z SIGTSTP 'suspend' command
		delay 0.5
		keystroke "kill %%" -- stop the suspended job
		delay 0.5
		key code 36 -- emulate enter
	end tell
end tell
delay 0.5
-- bring Ableton to front for UI scripting control
tell application "Ableton Live 12 Suite"
	activate
	delay 0.1
	-- emulate spacebar press to stop playback
	tell application "System Events"
		key code 49 -- spacebar
	end tell
end tell
delay 0.1
ignoring application responses
	tell application "Ableton Live 12 Suite"
		activate
		delay 0.1
		quit -- triggers the "save changes" dialog box
		delay 0.1
		-- emulate "Don't Save" button press
		tell application "System Events"
			key code 2 -- emulate "d" 
			delay 0.5
			-- quit Max
			tell application "Max"
				quit
				delay 0.5
				-- quit MadMapper
				tell application "MadMapper 5.6.6"
					quit
					delay 1
					-- quit Terminal
					tell application "Terminal"
						quit
					end tell
				end tell
			end tell
		end tell
	end tell
end ignoring
delay 1
tell application "System Events"
	sleep
end tell
