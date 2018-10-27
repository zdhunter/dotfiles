# Path to your oh-my-zsh installation.
export ZSH=/home/argos/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="gnzh"

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
plugins=(git git-extras github z git_remote_branch git-hubflow git-flow history lol pip perl pyenv python rails sudo urltools web-search debian dir-history encode64 gitfast zsh-syntax-highlighting)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
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
alias zshconfig="emacs ~/.zshrc &"
alias ohmyzsh="emacs ~/.oh-my-zsh &"
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias member="~/Documents/scripts/remember.sh"
alias music="sudo bash ~/Documents/scripts/reload_mpd.sh"
alias pbcopy="xclip -sel clip"
# git aliases
alias branches="git branch -a"
alias stashes="git stash list"
alias unstash="git stash apply"
alias unstage="git reset -q HEAD --"
alias discard="git checkout --"
alias uncommit="git reset --mixed HEAD~"
alias amend="git commit --amend"
alias nevermind="git reset --hard HEAD"
alias graph="git log --graph -10 --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --date-order"
alias precommit="git diff --cached --diff-algorithm=minimal -w"
alias add_commit="git add -A && git commit -v --date=`date --utc +%Y-%m-%dT%H:%M:%S%z`"
#keep branch after merging
alias mergeNOFF="git merge --no-ff"
alias topoLog="git log --topo-order --decorate --first-parent"
#apps
alias telegram="/opt/telegram/Telegram"
alias android-studio="~/Documents/exe/android-studio/bin/studio.sh"
#quickly encrypt a file named "file" REMEMBER TO EDIT THE KEY'S EMAIL TO YOURS
alias encrypt_file="gpg --encrypt --sign -r alejandro720@protonmail.com file"

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export QT_QPA_PLATFORMTHEME=qt5ct


# export PATH="/home/$USER/Documents/Scripts:$PATH"
# required for MPC
export MPD_HOST="127.0.0.1"
export MPD_PORT="8451"

imgdl() {
    if [ ! -d "~/Downloads/imgdl" ]; then
        mkdir ~/Downloads/imgdl;
    fi
    rm -rf ~/Downloads/imgdl/*;
    cd ~/Downloads/imgdl/;
    python3.6 ~/Documents/scripts/download_images.py $1 | xargs wget;  # Path to script
    gthumb .                                # Image viewer
}

alias webmize="bash ~/Documents/scripts/webmize.sh"
alias yt_extract_mp3="bash ~/Documents/scripts/yt_extract_mp3.sh"
alias print_failed_ssh_cons="grep sshd.*Did /var/log/auth.log | less"
alias print_failed_ssh_logins="grep sshd.\*Failed /var/log/auth.log | less"
alias print_successful_ssh_logins="zgrep sshd /var/log/auth.log* | grep rhost | sed -re 's/.*rhost=([^ ]+).*/\1/' | sort -u"
alias print_public_ip="curl ipinfo.io/ip"
alias ban_ip="bash ~/Documents/scripts/ufw_ban_ip.sh"
# Bash only checks the first word of a command for an alias, any words after that are not checked. That means in a command like sudo ll, only the first word (sudo) is checked by bash for an alias, ll is ignored. We can tell bash to check the next word after the alias (i.e sudo) by adding a space to the end of the alias value.
# alias sudo='sudo '
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
