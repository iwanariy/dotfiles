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
export EDITOR="/usr/bin/vim"
export PATH=$PATH:/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$GOPATH/bin:$HOME/.nodebrew/current/bin:"${KREW_ROOT:-$HOME/.krew}/bin"
export GOPATH=$(go env GOPATH)

alias python='python3'

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

# history incremental search by peco
function peco-history-selection() {
    BUFFER=`history -n 1 | tac | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

### Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

source <(kubectl completion zsh)

# History
export HISTSIZE=1000
export SAVE=100000

. $(pack completion -s zsh)
eval "$(gh completion -s zsh)"

# create repo in github.com, ghq, and open in VS Code
function ghcr () {
  gh repo create $argv --private
  ghq get $argv[1]
  code (ghq list --full-path -e $argv[1])
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/bin/google-cloud-sdk/completion.zsh.inc'; fi

# uv
# Check if uv command exists before setting up completion
if command -v uv &> /dev/null; then
  eval "$(uv generate-shell-completion zsh)"
else
  # Optionally, print a warning if uv is not found
  # echo "Warning: uv command not found. Skipping uv completion setup." >&2
fi

. "$HOME/.local/bin/env"
