###########################################################        
# Options for Zsh
 
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
eval `dircolors -b`
 
autoload -U compinit compinit
 
# PS1 and PS2
export PS1="$(print '%{\e[0;34m%}%~%{\e[0m%}') "
export PS2="$(print '%{\e[0;34m%}>%{\e[0m%}')"

export DEBEMAIL="im.cyh@outlook.com"
export DEBFULLNAME="YuhanChen"

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
alias chbg='zsh ~/.zsh/change_theme.zsh'
alias cleanrc="dpkg -l | grep ^rc | cut -d' ' -f3 | sudo xargs dpkg --purge" 
# aliyun server
alias aliyy="ssh a@cyh.world"
alias termux="ssh u0_a241@192.168.2.105 -p8022"

alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1080" 
alias unsetproxy="unset ALL_PROXY"
#################################################################
# Plugin
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bg=gray,underline"
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh
