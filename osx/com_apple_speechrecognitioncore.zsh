action "com.apple.SpeechRecognitionCore Settings..."

# 音声入力の無効
running "AllowAudioDucking -int 0"
defaults write com.apple.SpeechRecognitionCore AllowAudioDucking -int 0;ok
