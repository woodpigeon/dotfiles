# Path to your oh-my-zsh installation.
export ZSH=/Users/tim/.oh-my-zsh

export EDITOR=subl
export TERM="xterm-256color"

setopt auto_cd
cdpath=($HOME/Sites/airslie $HOME/Sites $HOME/Desktop $HOME/Downloads)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias ber="bundle exec rails s"
alias dummer="bundle exec spec/dummy/bin/rails s"
alias be="bundle exec"
alias beg="bundle exec guard"
alias bes="bundle exec spring"
alias bem="bundle exec rake db:migrate"
alias bemt="RAILS_ENV=test bundle exec rake db:migrate"
alias bet="be rspec"
alias best="be spring rspec"
alias gs="git status"
alias gl="git log"
alias befs="bundle exec foreman start"
alias bec="bundle exec cucumber"
alias becwip="bundle exec cucumber -p wip"
alias becw="bundle exec cucumber TEST_DEPTH=web --profile rake_web"
alias becwwip="bundle exec cucumber TEST_DEPTH=web  -p wip"
alias mvim='mvim -v'

alias sbl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# https://github.com/direnv/direnv#setup
eval "$(direnv hook zsh)"

# added by travis gem
[ -f /Users/tim/.travis/travis.sh ] && source /Users/tim/.travis/travis.sh

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Git CheckOut Feature
gcof() {
  rip_number='999'
  echo 'RIP number:'
  read rip_number

  feature_title='Feature title'
  echo 'Feature title:'
  read feature_title

  # Replace all spaces with an underscore
  feature_title="${feature_title// /_}"

  # Capitalize first letter
  feature_title="$(tr '[:lower:]' '[:upper:]' <<< ${feature_title:0:1})${feature_title:1}"

  # Start a new branch as specified
  git checkout -b feature/RIP-${rip_number}_${feature_title}
}


# must be last
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
