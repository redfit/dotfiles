action "com.apple.AppleMultitouchTrackpad Settings..."

# タップでクリック
running "Clicking -int 1"
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1;ok

# 感圧トラックパッドの強さ
running "FirstClickThreshold -int 2"
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 2
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 2

# 三本指ドラックを可能にする
running "TrackpadThreeFingerDrag -int 1"
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1;ok
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0;ok

# 調べる&データ検出を三本指でタップにする
running "TrackpadThreeFingerTapGesture -int 2"
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2;
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2;
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2;
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2;ok
