action "Install command line tools..."
if ! xcode-select --print-path; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install

    running "Wait until the XCode Command Line Tools are installed"
    until xcode-select --print-path; do
        sleep 5
    done
    ok

    # コマンドツールをインストールするだけだったら必要ない、xcodeをインストールした後必要
    # sudo xcodebuild -license
    # print_result $? 'Agree with the XCode Command Line Tools licence'
fi
