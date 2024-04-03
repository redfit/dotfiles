action "NSGlobalDomain Settings..."

# キーリピート速度を最速に
running "NSGlobalDomain KeyRepeat -int 2"
defaults write -g KeyRepeat -int 2;ok
# キーリピート開始までを最速に
running "InitialKeyRepeat -int 15"
defaults write -g InitialKeyRepeat -int 15;ok
# マウスポインタの移動の加速度
running "com.apple.mouse.scaling -int 3"
defaults write -g: com.apple.mouse.scaling -int 3;ok
# マウスホイールのスクロールの加速度
running "com.apple.scrollwheel.scaling -int 1.7"
defaults write -g com.apple.scrollwheel.scaling -int 1.7;ok
# 調べる＆データ検出を３本タップにする
running "com.apple.trackpad.forceClick -int 0"
defaults write -g com.apple.trackpad.forceClick -int 0;ok
# トラックパッドでのマウススピード
running "com.apple.trackpad.scaling -int 3"
defaults write -g com.apple.trackpad.scaling -int 3;ok
# スプリングロード遅延 (Finder でディレクトリへの DnD 時にディレクトリ移動する時間) を短くする
running "com.apple.springing.delay -float 0.4"
defaults write -g com.apple.springing.delay -float 0.4;ok
# ディレクトリのスプリングロードを有効にする
running "com.apple.springing.enabled -bool true"
defaults write -g com.apple.springing.enabled -bool true;ok
# 外部キーボードのファンクションキーは通常モードにする
running "com.apple.keyboard.fnState -bool true;"
defaults write -g com.apple.keyboard.fnState -bool true;ok
# 英語を打つときに、最初が勝手に大文字にならないようにする
defaults write -g NSAutomaticCapitalizationEnabled -bool false;ok
# beep音を消す
defaults write -g com.apple.sound.beep.volume -int 0;ok

