action "Homebrew Doctor..."
if [[ $response =~ (y|yes|Y) ]]; then
  running "brew doctor"
  brew doctor
  if [[ $? = 0 ]]; then
    ok
  else
    error "Please retry & fix brew doctor"
    exit 2
  fi
fi
