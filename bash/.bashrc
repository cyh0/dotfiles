#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/home/cyh/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='simple'

# Don't check mail when opening terminal.
unset MAILCHECK
export SCM_GIT_SHOW_MINIMAL_INFO=true

# Load Bash It
source "$BASH_IT"/bash_it.sh


export RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup
# export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
# export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH="${JAVA_HOME}/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export EDITOR="vim"

##################################################################
# My aliases

# Normal aliases
alias ls='ls --color=auto -F'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -alh'
alias md='mkdir'
# change terminal and vim's color theme
alias chbg="bash $HOME/dotfiles/bash/chbg.sh"
alias cleanrc="dpkg -l | grep ^rc | cut -d' ' -f3 | sudo xargs dpkg --purge" 
# aliyun server
alias aliyy="ssh a@cyh.world"
alias termux="ssh u0_a241@192.168.2.105 -p8022"

alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1080" 
alias unsetproxy="unset ALL_PROXY"
