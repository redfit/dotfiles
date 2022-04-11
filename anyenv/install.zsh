action "Install Anyenv..."

running "anyenv init"
anyenv init;ok
running "anyenv install --init"
anyenv install --init
ok

langs=("rbenv" "nodenv" "goenv" "pyenv")
for lang in $langs; do
  if [[ "${+commands[$lang]}" == 0 ]]
  then
    running "anyenv install $lang"
    anyenv install $lang;ok
  fi
done

