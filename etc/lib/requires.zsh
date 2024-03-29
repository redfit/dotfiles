#!/usr/bin/env zsh

###
# convienience methods for requiring installed software
# @author daisuke fuchiwaki
# inspired by https://github.com/atomantic/dotfiles/blob/master/lib_sh/requirers.sh
###

function require_brew() {
    brew list $1 | true
    if [[ ${PIPESTATUS[0]} != 0 ]]; then
        running "brew install $1"
        brew install $1
        if [[ $? != 0 ]]; then
            error "failed to install $1! aborting..."
            # exit -1
        fi
    fi
    ok
}

function require_cask() {
    running "brew cask $1"
    brew cask list $1 | true
    if [[ ${PIPESTATUS[0]} != 0 ]]; then
        action "brew cask install $1 $2"
        brew cask install $1
        if [[ $? != 0 ]]; then
            error "failed to install $1! aborting..."
            # exit -1
        fi
    fi
    ok
}

function require_gem() {
    running "gem $1"
    if [[ $(gem list --local | grep $1 | head -1 | cut -d' ' -f1) != $1 ]]; then
        action "gem install $1"
        gem install $1
    fi
    ok
}

function require_mas() {
    running "mas $1"
    if [[ $(mas list | grep $1 | head -1 | cut -d' ' -f1) != $1 ]]; then
        action "mas install $1"
        mas install $1
    fi
    ok
}

function require_node(){
    running "node -v"
    node -v
    if [[ $? != 0 ]]; then
        action "node not found, installing via homebrew"
        brew install node
    fi
    ok
}

function require_npm() {
    sourceNVM
    nvm use stable
    running "npm $*"
    npm list -g --depth 0 | grep $1@
    if [[ $? != 0 ]]; then
        action "npm install -g $*"
        npm install -g $@
    fi
    ok
}

function sourceNVM(){
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
}

function require_nvm() {
    mkdir -p ~/.nvm
    cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
    sourceNVM
    nvm install $1
    if [[ $? != 0 ]]; then
        action "installing nvm"
        require_brew nvm
        . ~/.bashrc
        nvm install $1
    fi
    ok
}
