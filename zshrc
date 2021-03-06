# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

export CLOJURESCRIPT_HOME="$HOME/Documents/Code/tools/clojurescript"

export PATH="$PATH:$HOME/bin:$CLOJURESCRIPT_HOME/bin"

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200

# use rvm
if [[ -s /Users/toni/.rvm/scripts/rvm ]] ; then source /Users/toni/.rvm/scripts/rvm ; fi

# set git editor
export GIT_EDITOR=/usr/bin/vim

# export clojure contrib to class path
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/HEAD/clojure-contrib.jar
