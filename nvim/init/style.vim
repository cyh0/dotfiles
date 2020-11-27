" true color
set termguicolors

set background=dark
colorscheme solarized8_flat
let g:solarized_extra_hi_groups=1
let g:solarized_diffmode="low"


" Tmux color
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
