action "Install TotalFinder..."
if [ ! -e "/Applications/TotalFinder.app" ]; then
  running "download totalfinder.dmg"
  wget --no-check-certificate https://downloads.binaryage.com/TotalFinder-1.13.8.dmg -O ~/Downloads/TotalFinder.dmg &>/dev/null;ok
  running "mount totalfinder.dmg"
  hdiutil mount ~/Downloads/TotalFinder.dmg &>/dev/null;ok
  cd /Volumes/TotalFinder/ &>/dev/null
  running "install totalfinder"
  sudo installer -pkg TotalFinder.pkg -target / -lang ja &>/dev/null;ok
  cd ~/ &>/dev/null &>/dev/null
  running "unmount totalfinder"
  hdiutil detach /Volumes/TotalFinder/ &>/dev/null;ok
  running "rm totalfinder.dmg"
  rm -f ~/Downloads/TotalFinder.dmg &>/dev/null;ok
fi
