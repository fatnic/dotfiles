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

# Customize to your needs...
alias yt="youtube-dl -f best"
alias la="ls -lAhG"
alias ld="ls -ld */"
alias t="tmux"
alias apti="sudo apt-get install"
alias activate="source venv/bin/activate"
