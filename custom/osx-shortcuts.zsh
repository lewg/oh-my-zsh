# Are we on a mac?
if test "$VENDOR" = "apple"; then

	# Flush DNS
	alias flushdns="dscacheutil -flushcache"

	# LS USB
	alias lsusb='system_profiler SPUSBDataType'
	
	# Move windows Hi/Low (Vance)
	alias hilo='osascript ~ZSH_CUSTOM/Hi-Low-Windows.scpt'
	
fi