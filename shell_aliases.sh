# ******************************************************************************
# Script Name: shell_aliases.sh
# Description: The aliases list.
# Author: makamat
# Date: 2024-06-05
# Version: 1.0
# ******************************************************************************

# ------------------------------------------------------------------------------
# General
# ------------------------------------------------------------------------------

alias '?'='man'

if command -v tldr > /dev/null 2>&1; then
    alias '??'='tldr'
fi

# Clear
# ------------------------------------------------------------------------------

alias c='clear'

# Download
# ------------------------------------------------------------------------------

if command -v yt-dlp > /dev/null 2>&1; then
    # music
    alias dm="yt-dlp -P $HOME/Downloads/ --extract-audio --audio-format mp3"
fi

# Edit
# ------------------------------------------------------------------------------

alias e="$EDITOR"
alias ei3="e $HOME/.config/i3/config"
alias emime="e $HOME/.config/mimeapps.list"
alias emutt="e $HOME/.muttrc"
alias equte="e $HOME/.config/qutebrowser/config.py"
alias esa="e $HOME/.shell_aliases"
alias essh="sudo $EDITOR /etc/ssh/sshd_config"
alias etmux="e $HOME/.tmux.conf"
alias evifm="e $HOME/.config/vifm/vifmrc"
alias evim="e $HOME/.vimrc"
alias exinit="e $HOME/.xinitrc"
alias ez="e $HOME/.zshrc"

# Get
# ------------------------------------------------------------------------------

alias ga='alias'
alias gh='history'

# weather
alias gw='curl wttr.in'

# List
# ------------------------------------------------------------------------------

alias l='ls -la --color'
alias lbin="l $HOME/bin/"
alias lbook="l $HOME/Books/"
alias ldoc="l $HOME/Documents/"
alias ldow="l $HOME/Downloads/"
alias lhome="l $HOME/"
alias lmus="l $HOME/Music/"
alias lpics="l $HOME/Pictures/"
alias lproj="l $HOME/Projects/"
alias ltrash="l $HOME/.local/share/Trash/files/"
alias lvids="l $HOME/Videos/"

# Make
# ------------------------------------------------------------------------------

# directory
alias md='mkdir'

# file
alias mf='touch'

# Open
# ------------------------------------------------------------------------------

if command -v vifm > /dev/null 2>&1; then
    # directory
    alias od='vifm'
    alias odbin="od $HOME/bin/"
    alias odbook="od $HOME/Books/"
    alias odconf="od $HOME/.config/"
    alias oddoc="od $HOME/Documents/"
    alias oddow="od $HOME/Downloads/"
    alias odhome="od $HOME/"
    alias odi3="od $HOME/.config/i3/"
    alias odmus="od $HOME/Music/"
    alias odpic="od $HOME/Pictures/"
    alias odproj="od $HOME/Projects/"
    alias odtrash="od $HOME/.local/share/Trash/files/"
    alias odvid="od $HOME/Videos/"
fi

# Play
# ------------------------------------------------------------------------------

# YouTube
if command -v ytfzf > /dev/null 2>&1; then
    ## music
    alias pytm="ytfzf --audio-only --show-thumbnails --loop"

    # videos
    alias pytv="ytfzf --show-thumbnails --loop"
fi

# Quit
# ------------------------------------------------------------------------------

alias q='exit'

# Refresh
# ------------------------------------------------------------------------------

# network
alias rn='nmcli radio wifi off && sleep 3 && nmcli radio wifi on'

alias rz=". $HOME/.zshrc"

# Test
# ------------------------------------------------------------------------------

# network
alias tn='ping -c 3 example.com'

# Walk
# ------------------------------------------------------------------------------

alias w='cd'
alias wbin="w $HOME/bin/"
alias wbook="w $HOME/Books/"
alias wconf="w $HOME/.config/"
alias wdoc="w $HOME/Documents/"
alias wdow="w $HOME/Downloads/"
alias wdow="w $HOME/Downloads/"
alias whome="w $HOME/"
alias wi3="w $HOME/.config/i3/"
alias wmus="w $HOME/Music/"
alias wpic="w $HOME/Pictures/"
alias wproj="w $HOME/Projects/"
alias wtrash="w $HOME/.local/share/Trash/files/"
alias wvid="w $HOME/Videos/"

# ------------------------------------------------------------------------------
# OS
# ------------------------------------------------------------------------------

# Arch
# ------------------------------------------------------------------------------

if grep -q 'Arch' '/etc/os-release'; then
    # update & upgrade
    alias U='sudo pacman -Syu'

    # install
    alias I='sudo pacman -S'
fi

# ------------------------------------------------------------------------------
# Specific
# ------------------------------------------------------------------------------

# Git
# ------------------------------------------------------------------------------

if command -v git > /dev/null 2>&1; then
    alias gita='git add'
    alias gitb='git branch'
    alias giti='git init'
    alias gits='git status'
fi

# Newsboat
# ------------------------------------------------------------------------------

if command -v newsboat > /dev/null 2>&1; then
    alias news='newsboat'
fi

# Node Package Manager
# ------------------------------------------------------------------------------

if command -v npm > /dev/null 2>&1; then
    alias npmi='npm install'
    alias npmidev='npm install --save-dev'
    alias npms='npm start'
fi

# w3m
# ------------------------------------------------------------------------------

if command -v w3m > /dev/null 2>&1; then
    alias w3m="/usr/bin/w3m -H -o auto_image=FALSE -num"
fi
