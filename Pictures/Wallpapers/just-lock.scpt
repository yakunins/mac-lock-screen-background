activate application "SystemUIServer"
tell application "System Events"
    # keystroke depends on input mode, following line doesn't work reliably:
    # tell process "SystemUIServer" to keystroke "q" using {command down, control down}
    # so, using 'key code 12' instead of 'keystroke q':
    tell process "SystemUIServer" to key code 12 using {command down, control down}
end tell
