action "Homebrew Install..."
running "checking homebrew..."
brew_bin=$(which brew) &>/dev/null;ok

if [[ $brew_bin != "/usr/local/bin/brew" ]]; then
  running "installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  if [[ $? != 0 ]]; then
    error "unable to install homebrew, script $0 abort!"
    exit 2
  fi
  brew analytics off &>/dev/null
fi

