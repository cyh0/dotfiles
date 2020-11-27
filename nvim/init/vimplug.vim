" vim-plug
"-----------------------------------------------------------------------------
call plug#begin('~/dotfiles/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'preservim/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'voldikss/vim-floaterm'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarnpkg install'  }
call plug#end()


"-----------------------------------------------------------------------------
" common setting
"-----------------------------------------------------------------------------
" shift buffer
noremap <silent> <leader>bn :bn<cr>
noremap <silent> <leader>bp :bp<cr>
" close buffer
noremap <silent> <leader>bd :bd<cr>


"-----------------------------------------------------------------------------
" NERDTree
"-----------------------------------------------------------------------------
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 
            \ && exists("b:NERDTree") 
            \ && b:NERDTree.isTabTree()) | q | endif

" change default arrows
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

noremap <F4> :NERDTreeToggle<CR>

"-----------------------------------------------------------------------------
" voldikss/vim-floaterm
"-----------------------------------------------------------------------------
"
let g:floaterm_keymap_toggle = '<F8>'
let g:floaterm_keymap_prev   = '<F9>'
let g:floaterm_keymap_next   = '<F10>'
let g:floaterm_keymap_new    = '<F12>'
let g:floaterm_autoclose     = 1
let g:floaterm_position      = 'right' "default: center
let g:floaterm_width         = 0.5     "default: 0.6

autocmd FileType scheme noremap <F5> :FloatermNew scheme <space>%:t<cr>
autocmd FileType rust   noremap <F5> :FloatermNew! cargo run <cr>
autocmd FileType rust   noremap <F6> :FloatermNew --autoclose=0 cargo check <cr>
