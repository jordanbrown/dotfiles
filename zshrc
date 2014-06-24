ZSH=$HOME/.oh-my-zsh
ZSH_THEME="pure"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(atom git git-remote-branch osx jordanbrown zsh-syntax-highlighting)

[[ -f ~/.localrc ]] && . ~/.localrc

export EDITOR="atom -n"
export GIT_EDITOR="atom -w"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
