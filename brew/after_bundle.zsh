action "Brew Bundle After settings..."

running "linking diff-highlight"
ln -sf /usr/local/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight

if [[ $? != 0 ]]; then
  error "diff-highlight symlink error"
  exit 2
else
  ok
fi

running "install ricty font"
sudo cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache
if [[ $? != 0 ]]; then
  error "ricty font install error"
  exit 2
else
  ok
fi

running "chmod -R 755 /usr/local/share"
chmod -R 755 /usr/local/share
if [[ $? != 0 ]]; then
  error "chmod error"
  exit 2
else
  ok
fi
