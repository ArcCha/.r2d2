export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="miloshadzic"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  battery
  extract
  encode64
  git
  gitignore
  wakeonlan
  ssh-agent
  vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -z $SSH_CONNECTION ]]; then
  export EDITOR='vim'
  export TERM='xterm'
else
  export EDITOR='vim'
  #export TERM='xterm'
fi

alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias pdfcompress='function _pdfcompress() { gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1; };_pdfcompress'
alias sa="source activate \`conda env list | head -n -2 | tail -n +3 | cut -f1 -d' ' | pick\`"
alias sd="source deactivate"
alias ssha='find ~/.ssh/ -type f | grep -v ".*\.pub\|config\|known_hosts" | pick | xargs ssh-add'

export RUST_SRC_PATH=/home/arccha/programowanie/rust/rust/src
export CARGO_HOME=/home/arccha/.cargo
export PATH="$PATH:$HOME/.cargo/bin"

# PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# For virtualenvwrapper - wrapper for both python-virtualenv and python2-virtualenv
# export WORKON_HOME=~/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
# source /usr/bin/virtualenvwrapper.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

zstyle :omz:plugins:ssh-agent agent-forwarding on

export SCIKIT_LEARN_DATA="$HOME/Research/.scikit_learn_data"

bindkey -v
export KEYTIMEOUT=1

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

eval "$(direnv hook zsh)"

# Composer global packages
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

source /etc/profile.d/autojump.zsh

# Local executables
export PATH="$PATH:$HOME/.bin"

export MNE_DATASETS_SAMPLE_PATH="$HOME/.mne"

# Conda
source /etc/profile.d/conda.sh
