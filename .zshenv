export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

function _build_path() {
    local LOCAL_PATHS='/usr/local/sbin:/usr/local/bin'
    local SBIN_PATHS='/usr/sbin:/sbin'
    local BIN_PATHS='/usr/bin:/bin'
    local ALL_BIN_PATHS="$SBIN_PATHS:$BIN_PATHS"
    local BREW_PATHS='/opt/brew/bin:/opt/brew/sbin'
    if [ -d /usr/local/MacGPG2 ]; then
        local GPG_PATH='/usr/local/MacGPG2'
    else
        GPG_PATH=''
    fi
    PATH="$HOME/.bin:$BREW_PATHS:$LOCAL_PATHS:$GPG_PATH:$ALL_BIN_PATHS"
    export PATH
}

_build_path
