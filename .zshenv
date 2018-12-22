export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export GOPATH=$HOME/Projects/go

function _build_path() {
    local LOCAL_PATHS='/usr/local/sbin:/usr/local/bin'
    local SBIN_PATHS='/usr/sbin:/sbin'
    local BIN_PATHS='/usr/bin:/bin'
    local ALL_BIN_PATHS="$SBIN_PATHS:$BIN_PATHS"
    local BREW_PATHS='/opt/brew/bin:/opt/brew/sbin'
    local GO_PATHS="$GOPATH/bin"
    if [ -d /usr/local/MacGPG2/bin ]; then
        local GPG_PATH='/usr/local/MacGPG2/bin'
    else
        GPG_PATH=''
    fi
    PATH="$HOME/.bin:$BREW_PATHS:$LOCAL_PATHS:$GPG_PATH:$ALL_BIN_PATHS:$GO_PATHS"
    export PATH
}

_build_path

# From prezto: https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zshenv
# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi
