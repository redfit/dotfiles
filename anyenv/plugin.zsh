action "Install anyenv-update plugin..."
# plugin
# anyenv-update: provides `anyenv update` command to update target envs
#                https://github.com/znz/anyenv-update
if [[ ! -d $(anyenv root)/plugins ]] then
  running "git clone anyenv-update"
  mkdir -p $(anyenv root)/plugins
  git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update &>/dev/null
  ok
fi
