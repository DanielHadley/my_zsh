# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/danielhadley/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# I used this advice to get the user to danielhadley:
# for those using agnoster theme. 
# Edit agnoster.zsh-theme and find $user@%m then delete @%m. save, open your terminal
# https://github.com/robbyrussell/oh-my-zsh/issues/2033

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
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# EVERYTHING from by .bash_profile below
# local network
# Mount p
alias opp='open "smb://ad\u0166843@files.business.utah.edu/shares"'

alias p='cl /Volumes/shares/PIL/'


# Alias for color and human readable output
alias ls='ls -Ghp'

# Easy open 
alias o='open'
alias st='open -a "Sublime Text"'

# Function for cd and listing
cl () { cd "$@" && ls; }


# Github
alias gh='cd /Users/danielhadley/Github; ls'
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"

# Google drive
alias gd='open https://drive.google.com/drive/'


alias ds='cd /Users/danielhadley/Google\ Drive\ File\ Stream/My\ Drive/SI/DataScience/; ls'
#
alias dsd='open https://drive.google.com/drive/folders/0B7zkyECRdPKvVTdkX3FucFJ0bmc'


alias adp='cd /Users/danielhadley/Google\ Drive\ File\ Stream/My\ Drive/SI/DataScience/ADP/; ls'
#
alias adpd='open https://drive.google.com/drive/folders/0B7zkyECRdPKvVV80S0NCWFNMX3c'


alias nb='cd /Users/danielhadley/Google\ Drive\ File\ Stream/My\ Drive/Notes/; ls'


### Touch types
# Makes a new R file with the current working directory
# First argument is the R's file name
# Second argument is a .csv file, which it adds to the read.csv line 
touchr() { touch $1.R
echo -e '# Created By Daniel Hadley '$(date)' #\nsetwd("'$PWD'")\n#\n# Load Data\nd <- read_csv("./'$2'")' > $1.R
open $1.R
}


# combine touch and st
touchst () {
	touch "$1"
	st "$1"
}


# Creates a note with the date
touchd () {
	touch "$(date +'%Y-%m-%d')_$1"
	st "$(date +'%Y-%m-%d')_$1"
}


mkdird () {
	mkdir "$(date +'%Y-%m-%d')_$1"
	cl "$(date +'%Y-%m-%d')_$1"
}
# added by Anaconda3 4.1.1 installer
export PATH="//anaconda/bin:$PATH"


# Searches git
# https://stackoverflow.com/questions/11543593/grep-for-stuff-in-multiple-git-repositories
ggrep() {
    find . -type d -name .git | while read line; do
        (
        cd $line/..
        cwd=$(pwd)
        echo "$(tput setaf 2)$cwd$(tput sgr0)"
        git grep -n "$@"
        )
    done
}

