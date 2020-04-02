action "com.apple.frameworks.diskimages Settings..."

# ディスク検証を無効化
running "skip-verify -bool true"
defaults write com.apple.frameworks.diskimages skip-verify -bool true;ok
running "skip-verify-locked -bool true"
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true;ok
running "skip-verify-remote -bool true"
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true;ok
# ボリュームマウント時に自動的にFinderを表示
running "auto-open-ro-root -bool true"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true;ok
running "auto-open-rw-root -bool true"
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true;ok
running "OpenWindowForNewRemovableDisk -bool true"
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true;ok

