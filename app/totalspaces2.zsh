action "Install TotalSpaces2..."
if [ ! -e "/Applications/TotalSpaces2.app" ]; then
  running "download totalspaces2.dmg"
  wget https://downloads.binaryage.com/TotalSpaces2-2.8.8.dmg -O ~/Downloads/TotalSpaces2.dmg &>/dev/null;ok
  running "mount totalspaces2.dmg"
  hdiutil mount ~/Downloads/TotalSpaces2.dmg &>/dev/null;ok
  cd /Volumes/TotalSpaces2/ &>/dev/null
  running "install totalspaces2"
  cp -r TotalSpaces2.app /Applications/ &>/dev/null;ok
  cd ~/ &>/dev/null
  running "unmount totalspace2"
  hdiutil detach /Volumes/TotalSpaces2/ &>/dev/null;ok
  running "rm totalspace2.dmg"
  rm -f ~/Downloads/TotalSpaces2.dmg &>/dev/null;ok
fi
