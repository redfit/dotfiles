action "Brew Bundle After settings..."

running "install fzf"
cd /opt/Homebrew/Cellar/fzf/*
./install
if [[ $? != 0 ]]; then
  error "install fzf error"
  exit 2
else
  ok
fi

# 移動したのをもどす
cd
