" 按文件类型缩进
filetype indent on
" tab options
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
 
" for scheme
au FileType scheme setlocal ts=2 sts=2 sw=2
" if设置为垂直对齐
au FileType scheme setl lispwords-=if
