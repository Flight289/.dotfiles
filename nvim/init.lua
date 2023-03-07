---@diagnostic disable: undefined-global
vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu   = 1
vim.g.did_indent_on             = 1
-- vim.g.did_load_filetypes        = 1
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
vim.opt.updatetime = 0
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
vim.opt.cmdheight = 1
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
---------------------------
-- keymaps
---------------------------
vim.g.mapleader = " "
vim.keymap.set({'n', 'v'}, ';', ':')
vim.keymap.set({'n', 'v'}, '<leader>w', '<cmd>w<CR>')
vim.keymap.set({'n', 'v'}, '<leader>q', '<cmd>q!<CR>')
vim.keymap.set({'n', 'v'}, '<S-k>', '7<up>')
vim.keymap.set({'n', 'v'}, '<S-j>', '7<down>')
vim.keymap.set({'n', 'v'}, '<S-h>', '^')
vim.keymap.set({'n', 'v'}, '<S-l>', '$')
vim.keymap.set({'n', 'v'}, 'p', '"+p')
vim.keymap.set({'v'}, 'y', '"+y')
vim.keymap.set({'v'}, 'd', '"+d')
vim.keymap.set({'v'}, 'c', '"+c')
vim.keymap.set({'n'}, 'yy', '"+yy')
vim.keymap.set({'n'}, 'dd', '"+dd')
vim.keymap.set({'n'}, 'cc', '"+cc')
vim.keymap.set({'n'}, 'yi', '"+yi')
vim.keymap.set({'n'}, 'di', '"+di')
vim.keymap.set({'n'}, 'ci', '"+ci')
vim.keymap.set({'n'}, 'ya', '"+ya')
vim.keymap.set({'n'}, 'da', '"+da')
vim.keymap.set({'n'}, 'ca', '"+ca')
vim.keymap.set({'n'}, 'Y', '"+Y')
vim.keymap.set({'n'}, 'D', '"+D')
vim.keymap.set({'n'}, 'C', '"+C')
vim.keymap.set({'n', 'v'}, '<Esc><Esc>', '<cmd>nohlserch<CR>')
vim.keymap.set('i', '<C-f>', '<right>')
vim.keymap.set('i', '<C-b>', '<left>')
vim.keymap.set('i', '<C-d>', '<del>')
vim.keymap.set('i', '<C-a>', '0')
vim.keymap.set('i', '<C-e>', '$')
vim.keymap.set('i', '<C-k>', '<C-o>"+D')
vim.keymap.set({'n', 'v'}, '<C-j>', '<cmd>bprev<CR>')
vim.keymap.set({'n', 'v'}, '<C-k>', '<cmd>bnext<CR>')
vim.keymap.set({'n', 'v'}, '<C-^>', '<cmd>bd<CR>')
vim.keymap.set({'n', 'v'}, 'e', '<cmd>HopWord<CR>')
vim.keymap.set({'n', 'v'}, 'f', '<cmd>HopChar1<CR>')
vim.keymap.set({'n', 'v'}, 't', '<cmd>HopChar2<CR>')
vim.keymap.set("n", "<leader>.", "<cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>")
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>d", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "<leader>j", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<CR>')
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
--vim.keymap.set("n", "", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
vim.keymap.set("n", "<leader>m", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.references()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")
--vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.formatting()<CR>")
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

local function vim_logo()
    local logo = ''
    return logo
end
---------------------------
-- bootstrap lazy.nvim
---------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
---------------------------
-- plugin settings
---------------------------
require("lazy").setup({
    {
        "numToStr/Comment.nvim",
        lazy = true,
        event = 'CursorMoved',
        config = function ()
            require("Comment").setup({
                toggler = {
                    line = '<leader>ci',
                    block = '<leader>cs',
                },

                opleader = {
                    line = '<leader>ci',
                    block = '<leader>cs',
                },
            })
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = 'plenary.nvim',
        lazy = true,
        tag = '0.1.1',
        event = "CursorHold",
        config = function ()
            require("telescope").setup {}
        end
    },
    {
        'phaazon/hop.nvim',
        lazy = true,
        branch = 'v2',
        cmd = {
            "HopWord",
            "HopChar1",
            "HopChar2",
        },
        config = function ()
            require('hop').setup{}
        end
    },
    {
        'lewis6991/gitsigns.nvim',
        lazy = true,
        event = "CursorHold",
        config = function ()
            require("gitsigns").setup({})
        end
    },
    {
        "tversteeg/registers.nvim",
        lazy = true,
        event = "CursorHold",
        config = function ()
            require("registers").setup{}
        end
    },
    {
        "ray-x/lsp_signature.nvim",
        lazy = true,
        event = "CursorMoved"
    },
    {
        "rcarriga/nvim-notify",
        lazy = true
    },
    {
        "MunifTanjim/nui.nvim",
        lazy = true
    },
    {
        "folke/noice.nvim",
        lazy = true,
        dependencies = {"rcarriga/nvim-notify", "MunifTanjim/nui.nvim"},
        event = "CursorHold",
        config = function ()
            require("noice").setup({
                lsp = {
                    signature = {
                        enabled = false,
                    }
                }
            })
        end
    },
    {
        "onsails/lspkind.nvim",
        lazy = true,
        event = "InsertEnter"
    },
    {
        "nvim-lua/plenary.nvim",
        lazy = true
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        lazy = true,
        event = "CursorMoved",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        lazy = true,
        ft = 'markdown'
    },
    {
        "petertriho/nvim-scrollbar",
        lazy = true,
        event = "CursorHold",
        config = function ()
            require("scrollbar").setup({})
        end
    },
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        event = 'CursorHold',
        version = "<CurrentMajor>.*",
        build = "make install_jsregexp",
    },
    {
        "RRethy/vim-illuminate",
        lazy = true,
        event = 'CursorHold',
    },
    {
        "hrsh7th/nvim-cmp",
        lazy = true,
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        lazy = true,
        dependencies = { "nvim-cmp" },
    },
    {
        "hrsh7th/cmp-buffer",
        lazy = true,
        dependencies = { "nvim-cmp" },
    },
    {
        "hrsh7th/cmp-cmdline",
        lazy = true,
        dependencies = { "nvim-cmp" },
        event = "ModeChanged"
    },
    {
        "saadparwaiz1/cmp_luasnip",
        lazy = true,
        dependencies = { "nvim-cmp" },
        event = "InsertEnter"
    },
    {
        "j-hui/fidget.nvim",
        lazy = true,
        event = 'CursorHold',
        config = function()
            require"fidget".setup{}
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = true,
        event = 'CursorHold',
        config = function()
        end,
    },
    {
        "williamboman/mason.nvim",
        lazy = true,
        event = 'CursorHold',
        config = function()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = true,
        dependencies = { "nvim-lspconfig", "mason.nvim" },
        event = 'CursorHold',
        config = function()
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = true,
        event = 'CursorHold',
        config = function()
            require("indent_blankline").setup{}
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        lazy = true,
        event = 'CursorHold',
        dependencies = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require('lualine').setup{
                options={
                    icons_enables = true,
                    theme = 'wombat',
                    component_separators = { left = [[]], right = [[]] },
                    section_separators = { left = '', right = '' },
                    disabled_filetypes = {'nvimtree'},
                    always_divide_middle = true,
                    colored = false,
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {},
                    lualine_c = {
                        {
                            'filename',
                            path = 0,
                            newfile_status = true,
                            file_status = true,
                            shorting_target = 40,
                            symbols = {
                                modified = '[+]',
                                readonly = '[-]',
                                unnamed = '[No Name]',
                                newfile = '[New]'
                            },
                        }
                    },
                    lualine_x = {
                        'filetype',
                        'encoding'
                        },
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {filename},
                    lualine_x = {location},
                    lualine_y = {},
                    lualine_z = {},
                },
                tabline = {
                    lualine_a = {vim_logo},
                    lualine_b = {'buffers'},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {'diff'},
                    lualine_z = {'branch'},
                },
                extensions = {}
            }
        end,
    },
    {
        'norcalli/nvim-colorizer.lua',
        lazy = true,
        event = 'CursorHold',
        config = function()
            require('colorizer').setup{}
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        event = 'CursorHold',
        config = function()
            vim.cmd([[colorscheme kanagawa]])
        end,
    },
    {
        "cohama/lexima.vim",
        lazy = true,
        event = {'InsertEnter'},
        config = function()
        end,
    },
    {
        "kyazdani42/nvim-web-devicons",
        lazy = true,
        event = 'CursorHold'
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        dependencies = {"kyazdani42/nvim-web-devicons"},
        cmd = { "NvimTreeToggle" },
        config = function()
            require("nvim-tree").setup{}

        end,
    }
})

local on_attach = function(client, bufnr)
    -- client.resolved_capabilities.document_formatting = false
end

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {
            on_attach == on_attach
        }
        require "lsp_signature".setup({
            handler_opts = {
                border = "rounded"
            }
        })
    end,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.opt.completeopt = "menu,menuone,noselect"

local lspkind = require('lspkind')
local cmp = require"cmp"
cmp.setup({
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol',
            maxwidth = 50,
            ellipsis_char = '...',
        })
    },
    snippet = {
        expand = function(args)
            require'luasnip'.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip" },
        { name = "cmdline" },
        { name = "buffer" },
    })
})

-- local null_ls = require "null-ls"
-- null_ls.setup {
--     sources = {
--         null_ls.builtins.code_actions.gitsigns,
--         null_ls.builtins.formatting.prettier.with {
--             prefer_local = "node_modules/bin",
--         },
--     },
-- }
