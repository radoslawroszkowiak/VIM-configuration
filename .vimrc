filetype off

command Wq wq
command WQ wq
command W w
command Q q
command Qa qa

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set copyindent
set preserveindent
set statusline=%{GitBranch()}
set colorcolumn=120
set number
set clipboard=unnamedplus
set ignorecase
set smartcase
set hlsearch
set wildignorecase
set nobackup
set noswapfile
set title
set undolevels=500

let mapleader=","

syntax on
filetype indent plugin on

let g:rehash256 = 1
colorscheme molokai
if $term!="xterm"
    set t_Co=256
    colorscheme molokai
endif

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/grep.vim'
Plugin 'easymotion/vim-easymotion'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'

Plugin 'othree/html5.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'gcorne/vim-sass-lint'
Plugin 'ervandew/supertab'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'michaeljsmith/vim-indent-object'

Plugin 'joonty/vdebug.git'

call vundle#end()
" Vundle plugins loaded

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{fugitive#head()}'
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:syntastic_python_checkers = ['flake8', 'pep8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_sass_checkers=['sass_lint']
let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_enable_perl_checker = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1

let g:php_cs_fixer_level = "psr2"

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal colorcolumn=80 

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabLongestHighlight=1

au BufNewFile,BufRead *.zcml set filetype=xml
au BufNewFile,BufRead *.pt set filetype=xml

inoremap <C-@> <c-x><c-o>

"Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" End of Split Navigation

"Split Resize
nnoremap <C-Up> :resize +5<CR>
nnoremap <C-Down> :resize -5<CR>
nnoremap <C-Left> :vertical resize -5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
"End of Split Resize

map <C-_> <plug>NERDCommenterToggle

let g:NERDCustomDelimiters = {
    \ 'html': {  'left': '<!-- ', 'right': '-->', 'leftAlt': '/*','rightAlt': '*/'  },
    \ 'xhtml': {  'left': '<!-- ', 'right': '-->', 'leftAlt': '/*','rightAlt': '*/' }, 
    \}
let NERD_html_alt_style = 1

vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <C-\> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.py[cod]$', '__pycache__', '\.idea$']

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <S-C-N> :CtrlPMixed<CR>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_preview = 1
let g:netrw_winsize = 30
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_list_hide = '.*\.swp$,.*\.py[cod]$'

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir

let g:vdebug_options = {}
let g:vdebug_options['port'] = 9001
let g:vdebug_options['break_on_open'] = 0
