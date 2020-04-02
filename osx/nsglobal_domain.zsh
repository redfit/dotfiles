action "NSGlobalDomain Settings..."

# アクセントカラー
running "AppleAquaColorVariant -int 1"
defaults write NSGlobalDomain AppleAquaColorVariant -int 1;ok
# 強調表示色
running 'AppleHighlightColor -string "0.847059 0.847059 0.862745 Graphite"'
defaults write NSGlobalDomain AppleHighlightColor -string "0.847059 0.847059 0.862745 Graphite";ok
# サイドバーのアイコンを小さく
running "NSTableViewDefaultSizeMode -int 1"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1;ok
# 書類を開く時は常にタブで開く
running 'AppleWindowTabbingMode -string "always"'
defaults write NSGlobalDomain AppleWindowTabbingMode -string "always";ok
# キーリピート速度を最速に
running "NSGlobalDomain KeyRepeat -int 2"
defaults write NSGlobalDomain KeyRepeat -int 2;ok
# キーリピート開始までを最速に
running "InitialKeyRepeat -int 15"
defaults write NSGlobalDomain InitialKeyRepeat -int 15;ok
# マウスポインタの移動の加速度
running "com.apple.mouse.scaling -int 1"
defaults write NSGlobalDomain com.apple.mouse.scaling -int 1;ok
# マウスホイールのスクロールの加速度
running "com.apple.scrollwheel.scaling -int 1"
defaults write NSGlobalDomain com.apple.scrollwheel.scaling -int 1;ok
# 調べる＆データ検出を３本タップにする
running "com.apple.trackpad.forceClick -int 0"
defaults write NSGlobalDomain com.apple.trackpad.forceClick -int 0;ok
# トラックパッドでのマウススピード
running "com.apple.trackpad.scaling -int 3"
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 3;ok
# トラックパッドでのスクローススピード
running "com.apple.trackpad.scrolling -int 1"
defaults write NSGlobalDomain com.apple.trackpad.scrolling -int 1;ok
# 全ての拡張子のファイルを表示する
running "AppleShowAllExtensions -bool true"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true;ok
# フルキーボードアクセスを有効にする
running "AppleKeyboardUIMode -int 2"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2;ok
# スプリングロード遅延 (Finder でディレクトリへの DnD 時にディレクトリ移動する時間) を短くする
running "com.apple.springing.delay -float 0.4"
defaults write NSGlobalDomain com.apple.springing.delay -float 0.4;ok
# ディレクトリのスプリングロードを有効にする
running "com.apple.springing.enabled -bool true"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true;ok
# 保存ダイアログを詳細設定で表示する
running "NSNavPanelExpandedStateForSaveMode -bool true"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true;ok
# コンソールアプリケーションの画面サイズ変更を高速にする
running "NSWindowResizeTime -float 0.001"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001;ok
