-- DateSort.applescript
-- B. Hogan
-- Sonic Playground, 2024-2025
-- Sort a defined directory, get the newest file and pass it to a Shortcut

set theFolder to "/Users/kreivalabs/Library/CloudStorage/Dropbox/test/" -- update as necessary
set theFolderReference to theFolder as POSIX file as alias

tell application "Finder"
	set latestFile to the last item of (sort (get files of theFolderReference) by creation date) as alias
	set theFileName to latestFile's name
end tell
tell application "Shortcuts Events"
	run shortcut "Get Dropbox File URL" with input theFileName
end tell
