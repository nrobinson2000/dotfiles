#
# ~/.bash_aliases
#

# Set prompt
export PS1="\[$(tput setaf 6)\]\[$(tput bold)\]\t \[$(tput setaf 2)\]\h \[$(tput setaf 4)\]\[$(tput bold)\]\w \\$ \[$(tput sgr0)\]"

# Set window title to PWD
export PS1="\[\e]0;\w\a\]$PS1"

export GPG_TTY="$(tty)"

# Editor
export EDITOR='vim'
alias svim='sudo -e'

# Make aliases work with sudo
alias sudo='sudo '

# Enable colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Misc
alias cp='cp -i'
alias df='df -h'
alias free='free -m'
alias more='less'

# ls
alias l='ls'
alias la='ls -A'
alias lh='ls -lah'
alias ll='ls -la'

# pushd/popd
alias pu='pushd'
alias po='popd'

# General
alias ..='cd ..'
alias py='python3'

# git
alias pull='git pull'
alias skip-ci='update "[skip ci]"'

# Application specific
alias ytm='ytfzf -ml'
alias p='particle'

# Add, commit and push all changes in a git repo
function update() {
  cd "$(pwd)"
  git add -A
  git commit -m "$1 at $(date +"%H:%M") of $(date +"%Y-%m-%d")"
  # Replace the line above with the following for GPG signed commits
  # git commit -S -m "$1 at $(date +"%H:%M") of $(date +"%Y-%m-%d")"
  git push -u origin $(git rev-parse --abbrev-ref HEAD)
}

# Run a command and copy the output to the clipboard
clip() { # Ex: clip ls -la
  $@ | xclip -selection "clipboard"
}

# Use vim as manpager
#export MANPAGER='vim -c "set showtabline=0 nonumber norelativenumber" -M +MANPAGER -'

# fzf to open multiple files
export FZF_DEFAULT_COMMAND='find . -path '*.git' -prune -o -print'
vi() {
  fzf --reverse --exact --multi | xargs -ro vim -o
}
