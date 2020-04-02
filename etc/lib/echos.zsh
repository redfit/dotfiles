#!/usr/bin/env zsh

###
# some colorized echo helpers
# @author daisuke fuchiwaki
# inspired by https://github.com/atomantic/dotfiles/blob/master/lib_sh/echos.sh
###

# Colors
ESC_SEQ="\e[38;5;"
COL_RESET=$ESC_SEQ"015m"
COL_RED=$ESC_SEQ"009m"
COL_GREEN=$ESC_SEQ"010m"
COL_YELLOW=$ESC_SEQ"011m"
COL_BLUE=$ESC_SEQ"012m"
COL_MAGENTA=$ESC_SEQ"013m"
COL_CYAN=$ESC_SEQ"014m"

function ok() {
    echo -e "${COL_GREEN}[ok]${COL_RESET} "$1
}

function bot() {
    echo -e "\n${COL_GREEN}\U1F916${COL_RESET} - "$1
}

function running() {
    echo -en "${COL_YELLOW} ⇒ ${COL_RESET} "${1}": "
}

function action() {
    echo -e "\n${COL_YELLOW}[action]:\n ⇒ ${COL_RESET} $1..."
}

function warn() {
    echo -e "${COL_YELLOW}[warning]${COL_RESET} "$1
}

function error() {
    echo -e "${COL_RED}[error]${COL_RESET} "$1
}

function print_error() {
    printf " [${COL_RED}✖${COL_RESET}] %s\n" "$1"
}

function print_result() {

    if [ "$1" -eq 0 ]; then
        print_success "$2"
    else
        print_error "$2"
    fi

    return "$1"

}

function print_success() {
    printf " [${COL_GREEN}✔${COL_RESET}] %s\n" "$1"
}

function debug() {
  echo "-------------- $1 ---------------"
  echo $2
}
