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
set background=light
colorscheme badwolf

"LIGHTLINE CONFIG"
set laststatus=2
set noshowmode
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ }

"NERDTREE CONFIG"
map <c-a> :NERDTreeToggle<Return>

""ALE CONFIG""
let g:ale_fixers = {
\            '*': ['remove_trailing_lines', 'trim_whitespace'],
\            'python': ['autopep8', 'isort']
\            }

""SNIPPIT CONFIG"
let g:UltiSnipsExpandTrigger="<F3>"
let g:UltiSnipsJumpForwardTrigger="<F4>"
let g:UltiSnipsJumpBackwardTrigger="<F2>"
"" CUSTOM S2 ""
noremap <F9> :read ~/S2/scratch/S2header.py<Return>
