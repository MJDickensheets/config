" Tabs and Spacing
set expandtab
set tabstop=4
set softtabstop=4

" Line Numbers
set number
set relativenumber

" Allow Project Specific vimrc
set exrc

" Splits
set splitbelow

" Colors
colorscheme default

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3


 " Status Line
 set statusline=
 set statusline+=%<\                       " cut at start
 set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
 set statusline+=%-40f\                    " path
 set statusline+=%=%1*%y%*%*\              " file type
 set statusline+=%10((%l,%c)%)\            " line and column
 set statusline+=%P                        " percentage of file

 " Filetype specific settings
 autocmd Filetype c,cpp set tabstop=2 shiftwidth=2 softtabstop=2

" VimPlug
call plug#begin(stdpath('data') . '/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'skywind3000/asyncrun.vim'
call plug#end()

" Deoplete
let g:deoplete#enable_at_startup = 1

" ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['clangtidy'],
\   'cpp': ['clangtidy'],
\}
let g:ale_linters = {
\   'c': ['clangtidy'],
\   'cpp': ['clangtidy'],
\}
