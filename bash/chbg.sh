#!/bin/sh

theme_bg='dark'
if [ "$theme_bg" == "light" ];then
    # vim bg
    sed -i '0,/light/s/light/dark/' "$HOME/.config/nvim/init/style.vim"
    # alacritty
    #sed -i 's/\*solarized_light/\*solarized_dark/g' "$HOME/.config/alacritty/alacritty.yml"
    # windows terminal
    sed -i '0,/Light/s/Light/Dark/' "/mnt/c/Users/imcyh/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
    # a flag 
    sed -i '0,/light/s/light/dark/' "$HOME/dotfiles/bash/chbg.sh"
    theme_bg='dark'
    echo "it's dark"
else
    sed -i "0,/dark/s/dark/light/" "$HOME/.config/nvim/init/style.vim"
    #sed -i "s/\*solarized_dark/\*solarized_light/g" "$HOME/.config/alacritty/alacritty.yml"
    sed -i '0,/Dark/s/Dark/Light/' "/mnt/c/Users/imcyh/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
    sed -i "0,/dark/s/dark/light/" "$HOME/dotfiles/bash/chbg.sh"
    theme_bg="light"
    echo "The Sun comes out!"
fi
