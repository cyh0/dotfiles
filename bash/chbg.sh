#! /bin/bash

theme_bg='dark'
if [ "$theme_bg" == "light" ];then
    sed -i '0,/light/s/light/dark/' "$HOME/.config/nvim/init/style.vim"
    sed -i 's/\*solarized_light/\*solarized_dark/g' "$HOME/.config/alacritty/alacritty.yml"
    sed -i '0,/light/s/light/dark/' "$HOME/dotfiles/bash/chbg.sh"
    theme_bg='dark'
    echo "it's dark"
else
    sed -i "0,/dark/s/dark/light/" "$HOME/.config/nvim/init/style.vim"
    sed -i "s/\*solarized_dark/\*solarized_light/g" "$HOME/.config/alacritty/alacritty.yml"
    sed -i "0,/dark/s/dark/light/" "$HOME/dotfiles/bash/chbg.sh"
    theme_bg="light"
    echo "The Sun comes out!"
fi
