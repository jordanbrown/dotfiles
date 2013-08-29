ZSH=$HOME/.oh-my-zsh
ZSH_THEME="jordanbrown"
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

export EDITOR='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -w'
export GIT_EDITOR='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -w'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

gifify() {
  if [[ -n "$1" ]]; then
    if [[ $2 == '--good' ]]; then
      ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
      time convert -verbose +dither -layers Optimize -resize 891x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=10 --loop --optimize=3 --multifile - > $1.gif
      rm out-static*.png
    else
      ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
    fi
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}