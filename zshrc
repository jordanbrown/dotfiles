ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jordanbrown"
# ZSH_THEME="fino"
DISABLE_AUTO_UPDATE="true"
# DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(jordanbrown git brew osx ruby rails3 gem pow powify sublime cloudapp)

# Paths
export HOMEBREW_PATH="/usr/local/homebrew/bin:/usr/local/homebrew/share/npm/bin"
export PATH="$HOME/bin:$HOMEBREW_PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:bin:$PATH"
export PATH="$PATH:/usr/local/heroku/bin"
export PATH="$PATH:/usr/local/homebrew/share/python"

export NODE_PATH="$NODE_PATH:/usr/local/homebrew/lib/node_modules"
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# Man
export MANPATH="/usr/local/man:/usr/local/homebrew/share/man:$MANPATH"

[[ -f ~/.localrc ]] && . ~/.localrc

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
