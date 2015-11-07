" Call pathogen to load plugins in .vim/bundle/
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on

syntax enable
set background=dark
colorscheme gruvbox

" Helps when you copy paste codes from other places
set pastetoggle=<F9> 

" Show atleast 5 lines below the cursor
set scrolloff=5

" Use the global register for clipboard,allows to copy-paste across different
" applications and vim, using the p command
set clipboard=unnamedplus

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"show line numbers
set number

"Auto change the working directory to the current directory
set autochdir

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
highlight SyntasticWarningSign guifg=yellow
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Enable neocomplcache at startup
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
" Plugin key-mappings for Delimit Mate.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

"<CR> expansion for delimit mate."
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_autoclose = 0

"Include the competative programing template at startup for C++ files"
autocmd BufNewFile *.cpp r ~/.vim/template.cpp

set laststatus=2

"NerdTree settings
map <C-n> :NERDTreeToggle<CR>

set guioptions-=T  "toolbar

set backspace=indent,eol,start

let python_highlight_all = 1

"set vim airline theme"
let g:airline_theme = 'tomorrow'

" use 256 terminal colors
set t_Co=256

set guifont=Monospace\ 10

" start VIM in maximized mode
set lines=999 columns=999

" Chrome like tab shortcuts
nnoremap <C-tab> :tabn<CR>                                                
nnoremap <C-t> :tabnew<CR>
nnoremap <C-S-tab> :tabp<CR>

" Use C++ 11 for compiling
let g:syntastic_cpp_compiler_options = ' -std=c++11'
