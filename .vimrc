"--------------------------
" 内部処理系
"--------------------------
set ttyfast
set noswapfile
set nowritebackup
set history=10000
set nobackup
set autoread
set hidden
set fenc=utf-8
set nrformats=
set virtualedit=onemore
set backspace=indent,eol,start
set wildmenu
set noerrorbells
"--------------------------
" search settings
"--------------------------
set ignorecase
set smartcase
set nofoldenable
set wrapscan
set incsearch
set hlsearch
"--------------------------
" tab settings
"--------------------------
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"--------------------------
" 表示系
"--------------------------
filetype plugin indent on
syntax on
set number
"set relativenumber
set cursorline
"set ambiwidth=double
set shellslash
set showtabline=2
set showmatch matchtime=1
set cinoptions+=:0
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set list
set listchars=tab:^\ ,trail:~
set guioptions-=T
set guioptions+=a
set guioptions-=m
set guioptions+=R
set showmatch
set smartindent
set title
set termguicolors
"--------------------------
" hilights
"--------------------------
hi Comment ctermfg=3
"--------------------------
" keymaps
"--------------------------
let g:mapleader = "\<Space>"
nnoremap ; :
nnoremap <silent><Leader>w :w<CR>
nnoremap <silent><Leader>q :q!<CR>
nnoremap <silent><S-k> 7<up>
nnoremap <silent><S-j> 7<down>
nnoremap <silent><S-h> 0
nnoremap <silent><S-l> $
nnoremap <silent><Esc><Esc> :nohlsearch<CR>
inoremap <silent><C-f> <right>
inoremap <silent><C-d> <left>

"--------------------------
" function
"--------------------------
" Undoの永続化
if has('persistent_undo')
    let undo_path = expand('~/.vim/undo')
    exe 'set undodir=' .. undo_path
    set undofile
endif

"dein Scripts---------------------------------
if &compatible
    set nocompatible
endif

"install dir {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
"}}}

"dein installation check {{{
if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    " .toml file
    let s:rc_dir = expand('~/.vim')
    if !isdirectory(s:rc_dir)
        call mkdir(s:rc_dir, 'p')
    endif
    let s:toml = s:rc_dir . '/dein.toml'
    let s:lazy_toml = s:rc_dir . '/dein_lazy.toml'

    " read toml and cache
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    " end settings
    call dein#end()
    call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
    call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
    call map(s:removed_plugins, "delete(v:val, 'rf')")
    call dein#recache_runtimepath()
endif
" }}}

" Add of remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
filetype plugin indent on
syntax enable

" If you want to insrall not installed plugins on startup.
"if dein#check_install()
"    call dein#install()
"endif


"End dein Scripts-----------------------------
