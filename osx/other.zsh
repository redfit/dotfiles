action "Other Settings..."

# Libraryフォルダを表示
running "sudo chflags nohidden ~/Library"
sudo chflags nohidden ~/Library;ok
# Volumesフォルダを表示
running "sudo chflags nohidden /Volumes"
sudo chflags nohidden /Volumes;ok
# ブート時のサウンドの無効化 (寂しい気もしますが煩いので消しています)
running 'sudo nvram SystemAudioVolume=" "'
sudo nvram SystemAudioVolume=" ";ok
# フリーズすると自動的に再起動
running "sudo systemsetup -setrestartfreeze on"
sudo systemsetup -setrestartfreeze on;ok
# スリープさせない
running "sudo systemsetup -setcomputersleep Off"
sudo systemsetup -setcomputersleep Off > /dev/null;ok

