action "Homebrew Doctor..."
read "?   ❓ run brew doctor? [y|N] " response
if [[ $response =~ (y|yes|Y) ]]; then
  running "brew doctor"
  mkdir -p ~/Library/Caches/Homebrew/Formula
  brew doctor
  if [[ $? = 0 ]] then
    ok
  else
    error "Please retry & fix brew doctor"
    exit 2
  fi
fi
