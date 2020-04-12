action "OS Configuration..."
read "?   ❓ Do you want to update the system configurations? [y|N] " response
if [[ -z $response || $response =~ ^(n|N) ]]; then
  running "All done"
  exec "$SHELL";ok
  exit
fi
source $DOTDIR/osx/close_preferences.zsh
source $DOTDIR/osx/nsglobal_domain.zsh
source $DOTDIR/osx/com_apple_touchbar_agent.zsh
source $DOTDIR/osx/com_apple_applemultitouchtrackpad.zsh
source $DOTDIR/osx/com_apple_speechrecognitioncore.zsh
source $DOTDIR/osx/com_apple_spotlight.zsh
source $DOTDIR/osx/com_apple_doc.zsh
source $DOTDIR/osx/com_apple_menuextra_clock.zsh
source $DOTDIR/osx/com_apple_finder.zsh
source $DOTDIR/osx/com_apple_frameworks_diskimage.zsh
source $DOTDIR/osx/com_apple_appstore.zsh
source $DOTDIR/osx/com_apple_softwareupdate.zsh
source $DOTDIR/osx/com_apple_systemuiserver.zsh
source $DOTDIR/osx/com_apple_inputmethod_kotoeri.zsh
source $DOTDIR/osx/other.zsh

