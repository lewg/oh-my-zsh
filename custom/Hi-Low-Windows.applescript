
tell application "System Events"
	tell process "Twitter"
		activate
		set size of window 1 to {350, 800}
		set position of window 1 to {1070,0}
	end tell
	tell process "LimeChat"
		activate
		set size of window 1 to {900, 700}
		set position of window 1 to {40, 160}
	end tell
	tell process "Mail"
		activate
		set size of window 1 to {1000, 800}
		set position of window 1 to {0, 0}
	end tell
end tell
