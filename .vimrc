filetype off

command Wq wq
command WQ wq
command W w
command Q q

execute pathogen#infect()
call pathogen#helptags()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set statusline=%{GitBranch()}
set colorcolumn=80
set number
set clipboard=unnamedplus
set ic
set wildignorecase
set nobackup
set noswapfile
set title
set undolevels=500
"set mouse=a


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
call vundle#begin()

Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'joonty/vdebug.git'

call vundle#end()
" Vundle plugins loaded
"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{fugitive#head()}'
let g:airline_left_sep=''
let g:airline_right_sep=''

let g:syntastic_python_checkers = ['flake8', 'pep8']
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_enable_perl_checker = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview

let g:php_cs_fixer_level = "psr2"

au BufNewFile,BufRead *.zcml set filetype=xml
au BufNewFile,BufRead *.pt set filetype=xml

"Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" End of Split Navigation

map <C-a>a ggvG<End>
map <C-p>d Oimport pdb; pdb.set_trace()<Esc>
map <Leader>, "_
map <C-p>t :%!tidy -i -xml -q<Enter>

vmap <Tab> >gv
vmap <S-Tab> <gv

"nnoremap <C-\> :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.py[cod]$', '__pycache__', '\.idea$']

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <C-N> :CtrlPMixed<CR>
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
"set autochdir

let g:vdebug_options['port'] = 9001
let g:vdebug_options['break_on_open'] = 0
let g:vdebug_keymap = {
    \    "run" : "<F5>",
    \    "run_to_cursor" : "<F6>",
    \    "step_over" : "<F8>",
    \    "step_into" : "<F3>",
    \    "step_out" : "<F4>",
    \    "close" : "<F9>",
    \    "detach" : "<F2>",
    \    "set_breakpoint" : "<F10>",
    \    "get_context" : "<F11>",
    \    "eval_under_cursor" : "<F12>",
    \    "eval_visual" : "<Leader>e",
    \}
}
