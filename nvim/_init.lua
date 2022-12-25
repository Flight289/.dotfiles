vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu   = 1
vim.g.did_indent_on             = 1
vim.g.did_load_filetypes        = 1
vim.g.did_load_ftplugin         = 1
vim.g.loaded_2html_plugin       = 1
vim.g.loaded_gzip               = 1
vim.g.loaded_man                = 1
vim.g.loaded_matchit            = 1
vim.g.loaded_matchparen         = 1
vim.g.loaded_netrwPlugin        = 1
vim.g.loaded_remote_plugins     = 1
vim.g.loaded_shada_plugin       = 1
vim.g.loaded_spellfile_plugin   = 1
vim.g.loaded_tarPlugin          = 1
vim.g.loaded_tutor_mode_plugin  = 1
vim.g.loaded_zipPlugin          = 1
vim.g.skip_loading_mswin        = 1
---------------------------
-- 内部処理系
---------------------------
vim.opt.ttyfast = true
vim.opt.swapfile = false
vim.opt.modeline = false
vim.opt.writebackup = false
vim.opt.history = 10000
vim.opt.backup = false
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.fenc = 'utf-8'
vim.opt.nrformats = "bin,hex"
vim.opt.virtualedit = "onemore"
vim.opt.backspace = "indent,eol,start"
vim.opt.wildmenu = true
vim.opt.errorbells = false
---------------------------
-- search settings
---------------------------
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.foldenable = false
vim.opt.wrapscan = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
---------------------------
-- tab settings
---------------------------
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
---------------------------
-- 表示系
---------------------------
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cursorline = true
vim.opt.shellslash = true
vim.opt.ambiwidth = "single"
vim.opt.showtabline = 2
vim.opt.matchtime = 1
vim.opt.cmdheight = 2
vim.opt.laststatus = 1
vim.opt.showcmd = true
vim.opt.display = "lastline"
vim.opt.list = true
vim.opt.listchars = {tab = '>-', trail = '~'}
vim.opt.showmatch = true
vim.opt.smartindent = true
vim.opt.title = true
vim.opt.termguicolors = true
---------------------------
-- hilights
---------------------------
--vim.cmd 'autocmd ColorScheme * highlight Normal ctermbg=none guibg=none'
--vim.cmd 'autocmd ColorScheme * highlight NonText ctermbg=none guibg=none'
--vim.cmd 'autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none'
--vim.cmd 'autocmd ColorScheme * highlight Folded ctermbg=none guibg=none'
--vim.cmd 'autocmd ColorScheme * highlight EndOfBuffer ctermbg=none guibg=none'
vim.cmd 'colorscheme wombat'
---------------------------
-- keymaps
---------------------------
vim.g.mapleader = " "
vim.keymap.set({'n', 'v', 'i'}, '<Space>',  '<Nop>')
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set({'n', 'v'}, '<leader>w', ':w<CR>')
vim.keymap.set({'n', 'v'}, '<leader>q', ':q!<CR>')
vim.keymap.set({'n', 'v'}, '<S-k>', '7<up>')
vim.keymap.set({'n', 'v'}, '<S-j>', '7<down>')
vim.keymap.set({'n', 'v'}, '<S-h>', '^')
vim.keymap.set({'n', 'v'}, '<S-l>', '$')
vim.keymap.set({'n', 'v'}, '<Esc><Esc>', ':nohiserch<CR>')
vim.keymap.set('i', '<C-f>', '<right>')
vim.keymap.set('i', '<C-d>', '<left>')
vim.keymap.set({'n', 'v'}, '<C-j>', ':bprev<CR>')
vim.keymap.set({'n', 'v'}, '<C-k>', ':bnext<CR>')

---------------------------
-- function
---------------------------
-- Undoの永続化
if vim.fn.has('persistent_undo') then
    local undo_path = vim.fn.expand('~/.config/nvim/undo')
    if (vim.fn.isdirectory(undo_path)) == 0 then
        os.execute('mkdir -p' .. undo_path)
    end
    vim.opt.undodir = undo_path
    vim.opt.undofile = true
end

--dein Scripts---------------------------------
--install dir {{{
local dein_dir = vim.fn.expand('~/.cache/dein')
local dein_repo_dir = dein_dir .. '/repos/github.com/Shougo/dein.vim'
--}}}

--dein installation check {{{
if not string.match(vim.o.runtimepath, '/dein.vim') then
    if (vim.fn.isdirectory(dein_repo_dir)) == 0 then
        os.execute('git clone https://github.com/Shougo/dein.vim' .. dein_repo_dir)
    end
    vim.o.runtimepath = dein_repo_dir .. ',' .. vim.o.runtimepath
end
-- }}}

-- begin settings {{{
if vim.call('dein#load_state', dein_dir) then
    vim.call('dein#begin', dein_dir)

    -- .toml file
    local rc_dir = vim.fn.expand('~/.config/nvim')
    if (vim.fn.isdirectory(rc_dir)) == 0 then
        os.execute('mkdir -p' .. rc_dir)
    end
    local toml = rc_dir .. '/dein.toml'
    local lazy_toml = rc_dir .. '/dein_lazy.toml'

    -- read toml and cache
    vim.call('dein#load_toml', toml, {lazy = 0})
    vim.call('dein#load_toml', lazy_toml, {lazy = 1})

    -- end settings
    vim.call('dein#end')
    vim.call('dein#save_state')
end
-- }}}

-- plugin installation check {{{
if vim.call('dein#check_install') == 1 then
    vim.call('dein#install')
end
-- }}}

-- plugin remove check {{{
local removed_plugins = vim.call('dein#check_clean')
if #(removed_plugins)-1 > 0 then
    for x in removed_plugins do os.execute("rm -rf " .. x) end
    vim.call('dein#recache_runtimepath')
end
--}}}

-- Add of remove your plugins here like this:
--call dein#add('Shougo/neosnippet.vim')
--call dein#add('Shougo/neosnippet-snippets')

-- Required:
--filetype plugin indent on
--syntax enable

-- If you want to insrall not installed plugins on startup.
if vim.call('dein#check_install') ~= 0 then
    vim.call('dein#install')
end


--End dein Scripts-----------------------------
