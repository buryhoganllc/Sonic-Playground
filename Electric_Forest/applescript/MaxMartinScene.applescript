--  Max Martin set.applescript
--	Created by: BRENDAN HOGAN
--	Created on: 7/13/25
--
--	Copyright ¬© 2025 Bury, Hogan & Associates LLC, All Rights Reserved
--
-- run sendmidi commands from within AppleScript by utilizing 'do shell script'
-- useful for executing CLI MIDI commands without launching Terminal
-- uncomment the appropriate path for an Intel or Apple Silicon installation of sendmidi via Homebrew, or an installation from a prebuilt binary
-- find your particular install by running 'which sendmidi' in Terminal
--
-- requires an installation of 'sendMIDI' (https://github.com/gbevin/SendMIDI)
--
--  Begin script
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions
--
-- for Homebrew installations on Intel Macs, uncomment the following line
-- set sendmidiPath to "/usr/local/Cellar/sendmidi"
--
-- for Homebrew installations on Apple Silicon Macs (M1, M2, etc), uncomment the following line
-- set sendmidiPath to "/opt/homebrew/bin/sendmidi"
--
-- for an installation from a prebuilt binary on any system, uncomment the following line
set sendmidiPath to "/usr/local/bin/sendmidi"
--
-- set the command parameters
-- change device name, channel, command, parameter, etc. as necessary
set midiCmd1 to sendmidiPath & " dev IAC Driver Bus 1 ch 5 cc 1 127" -- fade out audio
set midiCmd2 to sendmidiPath & " dev IAC Driver Bus 1 ch 4 cc 4 127" -- LED scene 2
set midiCmd3 to sendmidiPath & " dev IAC Driver Bus 1 ch 5 cc 4 127" -- Martin Mix
set midiCmd4 to sendmidiPath & " dev IAC Driver Bus 1 ch 3 cc 2 127" -- stop transport
--
-- execute the script
do shell script midiCmd1
do shell script midiCmd2
delay 6
do shell script midiCmd4
delay 0.1
do shell script midiCmd4
delay 0.4
do shell script midiCmd3
-- End script
