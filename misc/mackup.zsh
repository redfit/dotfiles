action "Creating Symlinks For Mackup"
read "?   ❓ symlink .mackup.cfg file? [y|N] " response
if [[ $response =~ (y|yes|Y) ]]; then
  now=$(date +"%Y.%m.%d.%H.%M.%S")

  files=(".mackup" ".mackup.cfg")
  for file in $files; do
    running "linking ~/$file"
    # if the file exists:
    if [[ -e ~/$file ]]; then
        mkdir -p ~/.mackup_backup/$now
        mv ~/$file ~/.mackup_backup/$now/$file
    fi
    # symlink might still exist
    unlink ~/$file
    # create the link
    ln -s ~/ghq/src/github.com/redfit/dotfiles/$file ~/$file

    ok
  done
fi
