action "Symbolic link Settings..."

running ".zshrc"
if [[ ! -e ~/.zshrc ]]; then
  ln -s ~/Dropbox/Mackup/.zshrc ~/.zshrc;ok
else
  echo "already exists: ~/.zshrc"
fi
running ".zsh_history"
if [[ ! -e ~/.zsh_history ]]; then
  ln -s ~/Dropbox/Mackup/.zsh_history ~/.zsh_history;ok
else
  echo "already exists: ~/.zsh_history"
fi
running ".tmux.conf"
if [[ ! -e ~/.tmux.conf ]]; then
  ln -s ~/Dropbox/Mackup/.tmux.conf ~/.tmux.conf;ok
else
  echo "already exists: ~/.tmux.conf"
fi
running ".tmux.conf.local"
if [[ ! -e ~/.tmux.conf.local ]]; then
  ln -s ~/Dropbox/Mackup/.tmux.conf.local ~/.tmux.conf.local;ok
else
  echo "already exists: ~/.tmux.conf.local"
fi
running ".vimrc"
if [[ ! -e ~/.vimrc ]]; then
  ln -s ~/Dropbox/Mackup/.vimrc ~/.vimrc;ok
else
  echo "already exists: ~/.vimrc"
fi
running ".vim"
if [[ ! -e ~/.vim ]]; then
  ln -s ~/Dropbox/Mackup/.vim ~/.vim;ok
else
  echo "already exists: ~/.vim"
fi
running ".ssh"
if [[ ! -e ~/.ssh ]]; then
  ln -s ~/Dropbox/Mackup/.ssh ~/.ssh;ok
else
  echo "already exists: ~/.ssh"
fi

running ".ideavimrc"
if [[ ! -e ~/.ideavimrc ]]; then
  ln -s ~/Dropbox/Mackup/.ideavimrc ~/.ideavimrc;ok
else
  echo "already exists: ~/.ideavimrc"
fi

running ".gitconfig"
if [[ ! -e ~/.gitconfig ]]; then
  ln -s ~/Dropbox/Mackup/.gitconfig ~/.gitconfig;ok
else
  echo "already exists: ~/.gitconfig"
fi

running ".gitignore_global"
if [[ ! -e ~/.gitignore_global ]]; then
  ln -s ~/Dropbox/Mackup/.gitignore_global ~/.gitignore_global;ok
else
  echo "already exists: ~/.gitignore_global"
fi

running "karabiner-element"
if [[ ! -e ~/.config/karabiner ]]; then
  ln -s ~/Dropbox/Mackup/.config/karabiner ~/.config/karabiner;ok
else
  echo "already exists: ~/.config/karabiner"
fi

running "alfred"
if [[ ! -e ~/.config/alfred ]]; then
  ln -s ~/Dropbox/Mackup/.config/alfred ~/.config/alfred;ok
else
  echo "already exists: ~/.config/alfred"
fi

running "moom application support"
if [[ ! -e ~/Library/Application\ Support/Many\ Tricks ]]; then
  ln -s ~/Dropbox/Mackup/Library/Application\ Support/Many\ Tricks ~/Library/Application\ Support/Many\ Tricks;ok
else
  echo "already exists: ~/Library/Application Support/Many Tricks"
fi

running "moom plist"
if [[ ! -e ~/Library/Preferences/com.manytricks.Moom.plist ]]; then
  ln -s ~/Dropbox/Mackup/Library/Preferences/com.manytricks.Moom.plist ~/Library/Preferences/com.manytricks.Moom.plist;ok
else
  echo "already exists: ~/Library/Preferences/com.manytricks.Moom.plist"
fi

running "iterm2 application support"
if [[ ! -e ~/.config/iterm2/AppSupport ]]; then
  ln -s ~/Dropbox/Mackup/.config/iterm2/settings ~/.config/iterm2/settings;ok
else
  echo "already exists: ~/.config/iterm2/AppSupport"
fi

running "starship"
if [[ ! -e ~/.config/starship.toml ]]; then
  ln -s ~/Dropbox/Mackup/.config/starship.toml ~/.config/starship.toml;ok
else
  echo "already exists: ~/.config/starship.toml"
fi
