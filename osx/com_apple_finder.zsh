action "com.apple.finder Settings..."

# 「新規Finderウィンドウで次を表示」をHOMEディレクトリにする
running 'NewWindowTarget -string "PfHm"'
defaults write com.apple.finder NewWindowTarget -string "PfHm";ok
# 「すべてのファイル名拡張子を表示」にチェックをつける
running "AppleShowAllFiles -bool true"
defaults write com.apple.finder AppleShowAllFiles -bool true;ok
# 「拡張子を変更する前に警告を表示」のチェックを外す
running "FXEnableExtensionChangeWarning -int 0"
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0;ok
# show litsview as default
running 'FXPreferredViewStyle -string "Nlsv"'
defaults write com.apple.Finder FXPreferredViewStyle -string "Nlsv";ok
# 検索実行時を「現在のフォルダ内を検索」にする
running 'FXDefaultSearchScope -string "SCcf"'
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf";ok
# Show absolute path in finder's title bar
running "_FXShowPosixPathInTitle -bool true"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true;ok
# Allow text selection in Quick Look/Preview
running "QLEnableTextSelection -bool true"
defaults write com.apple.finder QLEnableTextSelection -bool true;ok
# Show Path bar in Finder
running "ShowPathbar -bool true"
defaults write com.apple.finder ShowPathbar -bool true;ok
# Show Status bar in Finder
running "ShowStatusBar -bool true"
defaults write com.apple.finder ShowStatusBar -bool true;ok
# タグを表示しない
running "ShowRecentTags -bool true"
defaults write com.apple.finder ShowRecentTags -int 0;ok

