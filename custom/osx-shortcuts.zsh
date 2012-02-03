# Are we on a mac?
if test "$VENDOR" = "apple"; then

	# Flush DNS
	alias flushdns="dscacheutil -flushcache"

	# LS USB
	alias lsusb='system_profiler SPUSBDataType'
	
	# Move windows Hi/Low (Vance)
	alias hilo='osascript ~ZSH_CUSTOM/Hi-Low-Windows.applescript'
	
	# Launch a few of the regulars
	alias helo='osascript ~ZSH_CUSTOM/Launch-Apps.applescript'

	# Launch sublime text
	alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
	
fi