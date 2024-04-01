action "com.apple.finder Settings..."

# 隠しファイルを常に表示
defaults write com.apple.finder AppleShowAllFiles -int 1;ok
# 「すべてのファイル名拡張子を表示」にチェックをつける
running "AppleShowAllExtensions -bool true"
defaults write com.apple.finder AppleShowAllExtensions -int 1;ok
# 「拡張子を変更する前に警告を表示」のチェックを外す
running "FXEnableExtensionChangeWarning -int 0"
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0;ok
# カラム表示をデフォルトにする
running 'FXPreferredViewStyle -string "clmv"'
defaults write com.apple.Finder FXPreferredViewStyle -string "clmv";ok
# ステータスバーの表示
running "ShowStatusBar -bool true"
defaults write com.apple.finder ShowStatusBar -bool true;ok
# 接続中のサーバを表示
running "ShowMountedServersOnDesktop -bool true"
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true;ok

