action "com.apple.menuextra.clock Settings..."

# 日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）
running 'DateFormat -string "M\\U6708d\\U65e5(EEE)  H:mm"'
defaults write com.apple.menuextra.clock DateFormat -string "M\\U6708d\\U65e5(EEE)  H:mm";ok
running "IsAnalog -int 0"
defaults write com.apple.menuextra.clock IsAnalog -int 0;ok

