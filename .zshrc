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

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"

# Customize to your needs...
alias yt="youtube-dl -f best"
alias la="ls -lAhG"
alias ld="ls -ld */"
alias t="tmux"

alias apti="sudo apt-get install"
alias aptu="sudo apt-get update"

alias mkvenv="virtualenv .venv && activate"
alias activate="source .venv/bin/activate"
