# From prezto: https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zshrc
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

for bundle in ~/.bundles/* ; do
    source $bundle
done
