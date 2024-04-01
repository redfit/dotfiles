action "Close Preferences..."
running "closing any system preferences to prevent issues with automated changes"
osascript -e 'tell application "System Preferences" to quit';ok
