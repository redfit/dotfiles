action "com.apple.inputmethod.Kotoeri Settings..."

# バックスラッシュの入力を'\'にする
running "JIMPrefCharacterForYenKey -int 1"
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForYenKey -int 1
