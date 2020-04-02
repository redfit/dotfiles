action "com.apple.appstore Settings..."

# WebKitデベロッパーツールを有効にする
running "WebKitDeveloperExtras -bool true"
defaults write com.apple.appstore WebKitDeveloperExtras -bool true;ok
# デバッグメニューを有効にする
running "ShowDebugMenu -bool true"
defaults write com.apple.appstore ShowDebugMenu -bool true;ok

