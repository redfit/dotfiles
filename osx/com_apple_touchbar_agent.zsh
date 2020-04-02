action "com.apple.touchbar.agent Settings..."

# Fn キーを標準のファンクションキーとして使用する
running "PresentationModeFnMode PresentationModeFnModes = { appWithControlStrip = functionKeys; }; }; "
defaults write com.apple.touchbar.agent PresentationModeFnMode '
     PresentationModeFnModes = {
            appWithControlStrip = functionKeys;
         };
     };'
ok
