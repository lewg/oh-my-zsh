# Are we on a mac?
if test "$VENDOR" = "apple"; then

	# Flush DNS
	alias flushdns="sudo killall -HUP mDNSResponder"

	# LS USB
	alias lsusb='system_profiler SPUSBDataType'

	# Move windows Hi/Low (Vance)
	alias hilo='osascript ~ZSH_CUSTOM/Hi-Low-Windows.applescript'

	# Launch a few of the regulars
	alias helo='osascript ~ZSH_CUSTOM/Launch-Apps.applescript'
	
fi
