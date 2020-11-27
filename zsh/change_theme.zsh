#!/bin/zsh

theme_bg='dark'
if [[ "$theme_bg" == "light" ]] {
    sed -i '0,/light/s/light/dark/' ~/.config/nvim/init/style.vim
    sed -i 's/\*solarized_light/\*solarized_dark/g' ~/.config/alacritty/alacritty.yml
    sed -i '0,/light/s/light/dark/' ~/.zsh/change_theme.zsh
    theme_bg='dark'
    echo "it's dark"
} else {
    sed -i '0,/dark/s/dark/light/' ~/.config/nvim/init/style.vim
    sed -i 's/\*solarized_dark/\*solarized_light/g' ~/.config/alacritty/alacritty.yml
    sed -i '0,/dark/s/dark/light/' ~/.zsh/change_theme.zsh
    theme_bg='light'
    echo "The Sun comes out!"
}
