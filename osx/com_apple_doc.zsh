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
# ４本指ジェスチャーでExposeを開く
running "showAppExposeGestureEnabled -int 1"
defaults write com.apple.dock showAppExposeGestureEnabled -int 1;ok
# ４本指ジェスチャーでMissionControlを開く
running "showMissionControlGestureEnabled -int 1"
defaults write com.apple.dock showMissionControlGestureEnabled -int 1;ok
# 左上でスクリーンセーバー
running "wvous-tl-corner -int 5"
defaults write com.apple.dock wvous-tl-corner -int 5;ok
running "wvous-tl-modifier -int 0"
defaults write com.apple.dock wvous-tl-modifier -int 0;ok
# サイズを調整する
running "tilesize -int 35"
defaults write com.apple.dock tilesize -int 35;ok
# Dockの表示/非表示の切り替えの反応速度
running "autohide-delay -float 0"
defaults write com.apple.dock autohide-delay -float 0;ok

