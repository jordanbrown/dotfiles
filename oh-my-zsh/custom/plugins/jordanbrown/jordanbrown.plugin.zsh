# Load functions and completion
fpath=($(dirname $0)/functions $fpath)
autoload -U compinit
compinit
autoload -U $(dirname $0)/functions/*(:t)

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
REPORTTIME=10 # print elapsed time when more than 10 seconds

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

unsetopt correct

. $(dirname $0)/aliases

export PATH="$(dirname $0)/bin:$PATH"

