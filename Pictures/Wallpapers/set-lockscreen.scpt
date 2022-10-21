set home to POSIX path of (path to home folder)
set imgPath to home & "/Pictures/Wallpapers/lock-screen.png"
set lockImg to POSIX file imgPath

log "Setting wallpaper... " & lockImg

tell application "Finder"
	if exists file lockImg then
	    log "Found!" 
	else
	    log "File not found!"
	end if
end tell

# tell application "System Events"
tell application "Finder"
    set desktop picture to lockImg
end tell
