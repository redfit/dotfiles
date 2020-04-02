action "Homebrew Upgrade..."
read "?   ❓ run brew update && upgrade? [y|N] " response
if [[ $response =~ (y|yes|Y) ]]; then
  running "updating homebrew(brew update)"
  brew update &>/dev/null
  ok
  running "upgrading brew packages(brew upgrade)"
  brew upgrade &>/dev/null
  ok
else
  running "skipped brew package upgrades."
  ok
fi
