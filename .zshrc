# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=/home/lasithniro/.oh-my-zsh


# Use programmer fonts
POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_MODE='awesome-patched'

# =====================================================================
#				Function
zsh_wifi_signal(){
	local signal=$(nmcli -t device wifi | grep '^*' | awk -F':' '{print $6}')
    local color="yellow"
    [[ $signal -gt 75 ]] && color="green"
    [[ $signal -lt 50 ]] && color="red"
    echo -n "%F{$color}\uf1eb" # \uf1eb is 
}

move_to_trash () {
    mv "$@" ~/.trash
}

# =====================================================================


# =============================================================================
#                                   Variables
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# =============================================================================

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"
#ZSH_THEME="ys"
ZSH_THEME="powerlevel9k/powerlevel9k"


# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{black}%F{green} \uf155%f%F{black} %k\ue0b0%f "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\u26A1 "


# Context
DEFAULT_USER=$USER
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='green'
POWERLEVEL9K_CONTEXT_TEMPLATE="%F{cyan}%n%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
# Dirs
POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\u2699 %D{%H:%M  \UF133  %d.%m.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false

#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

# git
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"

POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'

#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B3'

POWERLEVEL9K_FOLDER_ICON=''

POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "

# Status
POWERLEVEL9K_OK_ICON=$'\uf164'
POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'

# Time
POWERLEVEL9K_TIME_FORMAT="%F{black}\uf017 %D{%I:%M}%f"
POWERLEVEL9K_TIME_BACKGROUND='green'


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( context os_icon ssh root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status history  rvm time battery)

ENABLE_CORRECTION="false"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git git-extras gem bundler osx ruby rvm rails sudo sublime colorize history-substring-search last-working-dir compleat zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting zsh-syntax-highlighting-filetypes warhol py)

autoload -U compinit && compinit
# source $ZSH/oh-my-zsh.sh
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# --------------------------------------------------------------------------------------
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PYTHONPATH=/usr/local/lib/python3.6/dist-packages
# export PYTHONPATH=/usr/local/lib/python3.5/dist-packages


eval `dircolors ~/.solarized/dircolors.ansi-dark`

# colorls
source $(dirname $(gem which colorls))/tab_complete.sh

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# plugins=(git)
# plugins=(git extract sublime colorize dirhistory history jsontools jump spring)

#Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias d='cd'
# alias rmr='rm -rf'
# alias rm='move_to_trash'

#Aliases
alias ls='colorls -a'
alias ll='colorls -la'
alias la='ls -A'
alias l='colorls'
#alias l='ls -a'
alias d='cd'
alias lear='clear'
alias var='cd /var/www/htdocs'
alias halflife='cd /mnt/783A8DB93A8D74C2/HalfLife'
alias topend='cd /mnt/783A8DB93A8D74C2/TOPEND
'
# List only directories
alias lsd='ls -l | grep "^d"'
alias dog='cat'
# alias rm='~/bashscripts/myScripts/rm-to-mv.sh'
alias cpwd='pwd|xclip -selection clipboard'
alias x='exit'
alias lc='colorls -lA --sd'
alias python='/usr/bin/python3'
alias mp3player='mocp'




pyclean () {
        find . -type f -name "*.py[co]"
        find . -type d -name "__pycache__"
        find . -type f -name "*.py[co]" -delete
        find . -type d -name "__pycache__" -delete
}

myip() {
	ifconfig enp3s0 | grep 'inet addr:' | cut -d: -f2| awk '{ print $1}'
}

vimclean () {
		find . -type f -name "tags"
		find . -type d -name ".ropeproject"
		find . -type f -name "tags"
		echo "Start deleting..."
		find . -type f -name "tags" -delete
		find . -name ".ropeproject" -type d -exec rm -r "{}" \;
		find . -type f -name "tags" -delete
}

backupdot () {
	cp ~/.zshrc ~/my-dot-files
	cp ~/.bashrc ~/my-dot-files
	cp ~/.vimrc ~/my-dot-files
	cp ~/.xprofile ~/my-dot-files
}

ANDROID_HOME="/mnt/0A5226BE5226ADFF/Ubuntu/Android/Sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export PATH=${JAVA_HOME}/bin:${PATH}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#neofetch

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/lasithniro/.nvm/versions/node/v9.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/lasithniro/.nvm/versions/node/v9.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
