set -g -x PATH /usr/local/bin $PATH
set -g -x fish_greeting ''

#rbenv bits
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
