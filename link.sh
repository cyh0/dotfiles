#! /bin/sh

# initiation
current_path=$(cd `dirname $0`; pwd)
backup_path="$current_path/backup"

if [ ! -d "$backup_path" ];then
    # if not exit, create it
    mkdir "$backup_path"
else
    rm -rf "$backup_path" && mkdir "$backup_path"
fi

# create link, if file exited, remove or backup it
# args: $1:src_path, $2:link_path $3:backup_name
create_link() {

    if [ -h "$2" ];then
        echo "link: $2 already exits, remove it"
        rm "$2"
        echo "relink $2 to $1"
        ln -s "$1" "$2"
        echo "--------------------------------------------------"
    elif [ -d "$2" ] || [ -f "$2" ];then
        echo "file or directory: $2 already exits"
        echo "backup it to $3"
        mv "$2" "$backup_path/$3"
        echo "link $2 to $1"
        ln -s "$1" "$2"
        echo "--------------------------------------------------"
    elif [ ! -d "$2" ] || [ ! -f "$2" ];then
        echo "link $2 to $1"
        ln -s "$1" "$2"
        echo "--------------------------------------------------"
    else
        echo -e "\033[31m $2 linked failed \033[0m"
        echo "--------------------------------------------------"
    fi
}

# coc
create_link "$current_path/coc/ultisnips" "$HOME/.config/coc/ultisnips" "ultisnips.bak"
# nvim
create_link "$current_path/nvim" "$HOME/.config/nvim" "nvim.bak"
# cargo
create_link "$current_path/cargo/config" "$HOME/.cargo/config" "cargoconfig.bak"
# bash
create_link "$current_path/bash/.bashrc" "$HOME/.bashrc" "bashrc.bak"
