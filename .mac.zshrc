# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/bin:$HOME/.local/bin

# Path to your oh-my-zsh installation.
#installation via script from github
#export ZSH="/home/$USER/.oh-my-zsh"
export ZSH="/Users/jonathanlorimer/.oh-my-zsh"
export EDITOR=nvim
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# Set up direnv
# eval "$(direnv hook zsh)"

# Source Nix
. $HOME/.nix-profile/etc/profile.d/nix.sh

# Fix manpath bug
# export LANG=en_CA.UTF-8
# export GDM_LANG=en_CA.UTF-8

# Prompt
autoload -U promptinit; promptinit
prompt spaceship
SPACESHIP_PROMPT_DEFAULT_PREFIX="|"
SPACESHIP_CHAR_SYMBOL="λ "
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  xcode         # Xcode section
  swift         # Swift section
  rust          # Rust section
  haskell       # Haskell Stack section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  terraform     # Terraform workspace section
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  exec_time     # Execution time
)

SPACESHIP_BATTERY_THRESHOLD=40

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
ZSH_HIGHLIGHT_STYLES[warnnestedvar]='none'
#list
# alias ls='ls --color=auto'
# alias la='ls -a'
# alias ll='ls -la'
# alias l='ls'
# alias l.="ls -A | egrep '^\.'"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
