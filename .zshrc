#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# Customize to your needs...
#
export PYENV_ROOT="$HOME/.pyenv"
export KUBE_EDITOR="/usr/local/bin/vim"
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:$HOME/.nodebrew/current/bin
eval "$(pyenv init -)"

# gi()
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# specify LANG for git
export LANG=C

# ghq + peco
function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

### Virtualenvwrapper
if [ -f $HOME/.pyenv/versions/3.5.1/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source $HOME/.pyenv/versions/3.5.1/bin/virtualenvwrapper.sh
fi
if [ -f $HOME/.pyenv/versions/2.7.11/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source $HOME/.pyenv/versions/2.7.11/bin/virtualenvwrapper.sh
fi
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

source <(kubectl completion zsh)

# History
export HISTSIZE=1000
export SAVE=100000

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.zsh.inc'; fi
