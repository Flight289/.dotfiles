let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
"let g:did_load_filetypes        = 1
let g:did_load_ftplugin         = 1
let g:loaded_rrhelper           = 1
let g:loaded_2html_plugin       = 1
let g:loaded_vimball            = 1
let g:loaded_vimballPlugin      = 1
let g:loaded_getscript          = 1
let g:loaded_getscriptPlugin    = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrw              = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_nerwSettings       = 1
let g:loaded_netrwFileHandlers  = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada              = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tar                = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zip                = 1
let g:loaded_zipPlugin          = 1
let g:loaded_logiPat            = 1
let g:skip_loading_mswin        = 1
"--------------------------
" 内部処理系
"--------------------------
set ttyfast
set noswapfile
set nomodeline
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
set updatetime=0
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
"filetype plugin indent on
"syntax on
set number
"set relativenumber
set cursorline
"set ambiwidth=double
set shellslash
set showtabline=2
set showmatch matchtime=1
set cinoptions+=:0
set cmdheight=1
set laststatus=1
set showcmd
set display=lastline
set list
set listchars=tab:>-\ ,trail:~
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
hi SpecialKey ctermfg=256
"--------------------------
" keymaps
"--------------------------
cabbr w!! w !sudo tee % > /dev/null
let g:mapleader = "\<space>"
nnoremap ; :
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><Leader>q :q!<CR>
nnoremap <silent><Esc><Esc> :nohlsearch<CR>
"{{{ clipboard key binds
map <silent>y "+y
noremap <silent>p "+p
vnoremap <silent>d "+d
vnoremap <silent>c "+c
vnoremap <silent>y "+y
nnoremap <silent>D "+D
nnoremap <silent>C "+C
nnoremap <silent>Y v$h"+y
nnoremap <silent>dd "+dd
nnoremap <silent>cc "+cc
nnoremap <silent>yy "+yy
nnoremap <silent>di "+di
nnoremap <silent>ci "+ci
nnoremap <silent>yi "+yi
"}}}

"{{{ hi-speed hjkl
noremap <silent><S-k> 7<up>
noremap <silent><S-j> 7<down>
noremap <silent><S-h> 0
noremap <silent><S-l> $
"}}}

"{{{ emacs key binds
inoremap <silent><C-f> <right>
inoremap <silent><C-b> <left>
inoremap <silent><C-a> <C-o>0
inoremap <silent><C-e> <C-o>$
inoremap <silent><C-k> <C-o>"+D
inoremap <silent><C-d> <del>
"}}}
inoremap <silent><C-z> <C-d>
nnoremap <silent><C-j> :bprev<CR>
nnoremap <silent><C-k> :bnext<CR>
nnoremap <silent><C-t> :Fern %:h -drawer -toggle -width=30<CR>
nnoremap <leader>ff <cmd>lua require("telescope.builtin").find_files( { cwd = vim.fn.expand("%:p:h") } )<CR>
nnoremap <leader>fg <cmd>lua require("telescope.builtin").live_grep( { cwd = vim.fn.expand("%:p:h") } )<CR>
nnoremap <leader>fs <cmd>lua require("telescope.builtin").grep_string( { cwd = vim.fn.expand("%:p:h") } )<CR>
nnoremap <leader>fb <cmd>lua require("telescope.builtin").buffers()<CR>
nnoremap <leader>fh <cmd>lua require("telescope.builtin").help_tags()<CR>

"--------------------------
" function
"--------------------------
" Undoの永続化
if has('persistent_undo')
    let undo_path = expand('~/.config/nvim/undo')
    exe 'set undodir=' .. undo_path
    if !isdirectory(undo_path)
        call mkdir(undo_path)
    endif
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
    let s:rc_dir = expand('~/.config/nvim')
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
"syntax enable



"End dein Scripts-----------------------------
