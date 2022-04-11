# sudo password を無視するように設定するか
action "NOPASSWD Settings..."
grep -q 'NOPASSWD:     ALL' /etc/sudoers.d/$LOGNAME
if [ $? -ne 0 ]; then
  warn "no suder file"
  sudo -v

  # Keep-alive: update existing sudo time stamp until the script has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done &

  read "?Do you want me to setup this machine to allow you to run sudo without a password? [y|N] " response
  if [[ $response =~ (y|yes|Y) ]]; then
    running "add sudoers.d/$LOGNAME"
    if ! sudo grep -q '#includedir /private/etc/sudoers.d' /etc/sudoers; then
      echo '#includedir /private/etc/sudoers.d' | sudo tee -a /etc/sudoers
    fi
    echo -e "Defaults:$LOGNAME    !requiretty\n$LOGNAME ALL=(ALL) NOPASSWD:     ALL" | sudo tee /etc/sudoers.d/$LOGNAME
    ok
  fi
fi
