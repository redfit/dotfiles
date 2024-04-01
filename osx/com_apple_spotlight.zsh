action "com.apple.Spotlight Settings..."

# ちょっと解らなかったけど差分があったので記載
running "SPMessageTracingWindowHideCount -int 9"
defaults write com.apple.Spotlight SPMessageTracingWindowHideCount -int 9;ok
running "SPMessageTracingWindowShowCount -int 9"
defaults write com.apple.Spotlight SPMessageTracingWindowShowCount -int 9;ok
