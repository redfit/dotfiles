action "com.apple.AppleMultitouchTrackpad Settings..."

# タップでクリック
running "Clicking -int 1"
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1;ok
# 感圧トラックパッドの強さ
running "FirstClickThreshold -int 2"
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 2
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad FirstClickThreshold -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad SecondClickThreshold -int 2;ok

# 三本指ドラックを可能にする
running "TrackpadThreeFingerDrag -int 1"
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1;ok

# 三本指ジェスチャーを無効
running "TrackpadThreeFingerHorizSwipeGesture -int 0"
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0;
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0;
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0;ok
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0;
# 調べる&データ検出を三本指でタップにする
running "TrackpadThreeFingerTapGesture -int 2"
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2;
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2;
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2;
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2;ok
