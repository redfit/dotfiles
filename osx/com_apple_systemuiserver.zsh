action "com.apple.systemuiserver Settings..."

# show status bar
running '"NSStatusItem Visible com.apple.menuextra.airport" -int 1'
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airport" -int 1;ok
running '"NSStatusItem Visible com.apple.menuextra.battery" -int 1'
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" -int 1;ok
running '"NSStatusItem Visible com.apple.menuextra.bluetooth" -int 1'
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" -int 1;ok
running '"NSStatusItem Visible com.apple.menuextra.clock" -int 1'
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock" -int 1;ok
running '"NSStatusItem Visible com.apple.menuextra.volume" -int 1'
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -int 1;ok
running '"NSStatusItem Visible com.apple.menuextras"'
defaults write com.apple.systemuiserver menuExtras '(
  "/System/Library/CoreServices/Menu Extras/Battery.menu",
  "/System/Library/CoreServices/Menu Extras/AirPort.menu",
  "/System/Library/CoreServices/Menu Extras/Clock.menu",
  "/System/Library/CoreServices/Menu Extras/Bluetooth.menu",
  "/System/Library/CoreServices/Menu Extras/Volume.menu"
)';ok
