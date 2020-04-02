action "com.apple.SoftwareUpdate Settings..."

# WebKitデベロッパーツールを有効にする
running "AutomaticCheckEnabled -bool true"
# 自動更新チェックを有効にする
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true;ok
# 毎日アプリケーションのアップデートを確認する
running "ScheduleFrequency -int 1"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1;ok
# アプリケーションのアップデートをバックグラウンドでダウンロードする
running "AutomaticDownload -int 1"
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1;ok
# システムデータファイルとセキュリティ更新プログラムをインストールする
running "CriticalUpdateInstall -int 1"
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1;ok

