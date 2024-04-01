action "com.apple.doc Settings..."

# 自動で非表示
running "autohide -int 1"
defaults write com.apple.dock autohide -int 1;ok
# 拡大設定
running "magnification -int 1"
defaults write com.apple.dock magnification -int 1;ok
# ウインドウをアプリケーションアイコンにしまう
running "minimize-to-application -int 1"
defaults write com.apple.dock minimize-to-application -int 1;ok
# 左上でスクリーンセーバー
running "wvous-tl-corner -int 5"
defaults write com.apple.dock wvous-tl-corner -int 5;ok
running "wvous-tl-modifier -int 0"
defaults write com.apple.dock wvous-tl-modifier -int 0;ok
# サイズを調整する
running "tilesize -int 16"
defaults write com.apple.dock tilesize -int 16;ok

