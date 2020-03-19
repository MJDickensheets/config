""MOVEMENT""
nmap <S-W> gegew
nmap <S-E> ge
"SYNTAX""
syntax enable

set tabstop=4 "number of visual spaces for tab
set softtabstop=4 "number of spaces in tab when editing
set shiftwidth=4 "number of spaces added after carrage return
set expandtab "tabs are spaces
inoremap <S-Tab> <C-V><Tab>

""SPELL CHECK""
set spelllang=en

""UI""
set number relativenumber "show line number
set showcmd "show command in bottom bar
set cursorline "highlight current line
filetype indent on "load filetype-specific indent files
set wildmenu "visual autocomplete for command menu
set lazyredraw "only redraw when necessary
set showmatch "highlight matching [{()}]
set scrolloff=20

""SEARCHES""
set incsearch "search as text is entered
set hlsearch "highlight results

""FOLDING""
set foldenable "enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "max fold nesting
set foldmethod=indent "fold based on indent level

""CURSORLINE""
hi clear CursorLine
hi CursorLine gui=underline cterm=underline

""TABS AND SPLITS""
noremap <F7> gT
noremap <F8> gt

""BACKUP, UNDO, SWP""
set backup
set backupdir=~/.vim/.backup//
set writebackup
set undodir=~/.vim/.undo//
set directory=~/.vim/.swp//

""PATHOGEN""
execute pathogen#infect()


""Colors""
colorscheme gruvbox
set background=light
hi Normal guibg=NONE ctermbg=NONE
hi clear SignColumn
hi clear VertSplit

"LIGHTLINE CONFIG"
set laststatus=2
set noshowmode

"NERDTREE CONFIG"
map <c-a> :NERDTreeToggle<Return>

""ALE CONFIG""
let g:ale_fixers = {
\            '*': ['remove_trailing_lines', 'trim_whitespace'],
\            'python': ['black', 'isort'],
\            'c': ['clang-format'],
\            'cpp': ['clang-format'],
\            'arduino': ['clang-format'],
\            'html': ['prettier'],
\            'typescript': ['prettier']
\            }
let g:ale_linters = {
\            'c': ['clang'],
\            'cpp': ['clang'],
\            'arduino': ['clang'],
\            'python': ['flake8'],
\            }

""C/CPP Helpers""
let include_dir = system('find $PWD -type d -name include -print')

if include_dir != ""
    let g:ale_c_clang_options="-I " . system('find $PWD -type d -name include -print')
    let g:ale_cpp_clang_options="-I " . system('find $PWD -type d -name include -print')
endif
set path=$PWD/**


"" AIRLINE""
let g:airline_powerline_fonts = 1

""CURSORLINE""
hi clear CursorLine
hi CursorLine gui=underline cterm=underline

""Filetype specific""
autocmd Filetype typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype python setlocal tabstop=4 softtabstop=4 shiftwidth=4
