#!/usr/bin/env zsh

###########################
# This script installs the dotfiles and runs all other system configuration scripts
# @author daisuke fuchiwaki
# inspired by https://github.com/atomantic/dotfiles/blob/master/install.sh
###########################

export DOTDIR=$(PWD)

# include my library helpers for colorized echo and requires functions
source ./etc/lib/echos.zsh
source ./etc/lib/requires.zsh

bot "Hi! I'm going to install tooling and tweak your system settings. Here I go..."

source $DOTDIR/misc/index.zsh
source $DOTDIR/brew/index.zsh
source $DOTDIR/anyenv/index.zsh
source $DOTDIR/app/index.zsh
source $DOTDIR/osx/index.zsh

# exec $SHELL の後だとOKが綺麗に出ないので先出ししちゃっている
action "shell restart"
running "exec '$SHELL'"
ok

exec "$SHELL"


