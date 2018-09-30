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
export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export ANT_HOME="/usr/local/bin/ant/"
export PATH="$PATH:$ANT_HOME/bin"
export GOPATH=$HOME
export PATH="$GOPATH/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PATH="/usr/local/sbin:$PATH"
eval "$(pyenv init -)"

# gi()
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/local/lib/google-cloud-sdk/path.zsh.inc' ]; then source '/opt/local/lib/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/local/lib/google-cloud-sdk/completion.zsh.inc' ]; then source '/opt/local/lib/google-cloud-sdk/completion.zsh.inc'; fi

source <(kubectl completion zsh)
