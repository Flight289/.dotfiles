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
--vim.opt.shellslash = true
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
vim.keymap.set({'n', 'v'}, '<Esc><Esc>', '<cmd>nohlsearch<CR>')
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
-- vim.keymap.set("n", "", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
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
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opt = {
            position = "bottom", -- position of the list can be: bottom, top, left, right
            height = 10, -- height of the trouble list when position is top or bottom
            width = 50, -- width of the list when position is left or right
            icons = true, -- use devicons for filenames
            mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
            severity = nil, -- nil (ALL) or vim.diagnostic.severity.ERROR | WARN | INFO | HINT
            fold_open = "", -- icon used for open folds
            fold_closed = "", -- icon used for closed folds
            group = true, -- group results by file
            padding = true, -- add an extra new line on top of the list
            cycle_results = true, -- cycle item list when reaching beginning or end of list
            action_keys = { -- key mappings for actions in the trouble list
                -- map to {} to remove a mapping, for example:
                -- close = {},
                close = "q", -- close the list
                cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
                refresh = "r", -- manually refresh
                jump = { "<cr>", "<tab>", "<2-leftmouse>" }, -- jump to the diagnostic or open / close folds
                open_split = { "<c-x>" }, -- open buffer in new split
                open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
                open_tab = { "<c-t>" }, -- open buffer in new tab
                jump_close = {"o"}, -- jump to the diagnostic and close the list
                toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
                switch_severity = "s", -- switch "diagnostics" severity filter level to HINT / INFO / WARN / ERROR
                toggle_preview = "P", -- toggle auto_preview
                hover = "K", -- opens a small popup with the full multiline message
                preview = "p", -- preview the diagnostic location
                open_code_href = "c", -- if present, open a URI with more information about the diagnostic error
                close_folds = {"zM", "zm"}, -- close all folds
                open_folds = {"zR", "zr"}, -- open all folds
                toggle_fold = {"zA", "za"}, -- toggle fold of current file
                previous = "k", -- previous item
                next = "j", -- next item
                help = "?" -- help menu
            },
            multiline = true, -- render multi-line messages
            indent_lines = true, -- add an indent guide below the fold icons
            win_config = { border = "single" }, -- window configuration for floating windows. See |nvim_open_win()|.
            auto_open = false, -- automatically open the list when you have diagnostics
            auto_close = false, -- automatically close the list when you have no diagnostics
            auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
            auto_fold = false, -- automatically fold a file trouble list at creation
            auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
            include_declaration = { "lsp_references", "lsp_implementations", "lsp_definitions"  }, -- for the given modes, include the declaration of the current symbol in the results
            signs = {
              -- icons / text used for a diagnostic
              error = "",
              warning = "",
              hint = "",
              information = "",
              other = "",
            },
            use_diagnostic_signs = true -- enabling this will use the signs defined in your lsp client
        },
        vim.keymap.set({ "n", "v" }, "<leader>x", "<cmd>TroubleToggle<cr>")
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
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
    end
    },
    {
        "mfussenegger/nvim-dap",
        lazy = true,
        config = function ()
            local dap = require("dap")
            dap.adapters.lldb = {
                type = "executable",
                command = "/usr/bin/lldb-vscode",
                name = "lldb"
            }
            dap.configurations.c = dap.configurations.cpp
            require('dap.ext.vscode').load_launchjs( nil, { cppdbg = { "c", "cpp" } } )
            vim.keymap.set('n', '<leader>D', function() require('dap').continue() end)
        end
    },
    {
        "stevearc/overseer.nvim",
        dependencies = 'mfussenegger/nvim-dap',
        config = function ()
            require("overseer").setup()
            require("dap.ext.vscode").json_decode = require("overseer.json").decode
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
        key = {
            {'"', mode = "n",},
        },
        config = function ()
            require("registers").setup{}
        end
    },
    -- {
    --     "ray-x/lsp_signature.nvim",
    --     lazy = true,
    --     event = "CursorMoved",
    --     config = function ()
    --         require("lsp_signature").setup()
    --     end
    -- },
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
        "kevinhwang91/nvim-ufo",
        lazy = true,
        event = "BufEnter",
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
    --[[ {
        "nvimdev/lspsaga.nvim",
        lazy = true,
        event = "CursorMoved",
        config = function ()
            require("lspsaga").setup({
              border_style = "single",
              symbol_in_winbar = {
                enable = false,
              },
              code_action_lightbulb = {
                enable = true,
              },
              show_outline = {
                win_width = 50,
                auto_preview = false,
              },
            })
            vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga lsp_finder<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga peek_definition<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga code_action<CR>")
            vim.keymap.set("n", "<leader>", "<cmd>Lspsaga rename<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga SLoutlineToggle<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga show_line_diagnostics<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga diagnostic_jump_next<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga open_floaterm<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga open_floaterm lazygit<CR>")
            -- vim.keymap.set("n", "<leader>", "<cmd>Lspsaga close_floaterm<CR>")
        end
    }, ]]
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
        event = "InsertEnter",
        config = function ()
            local lspkind = require'lspkind'
            local cmp = require'cmp'
            cmp.setup({
                formatting = {
                    format = lspkind.cmp_format({
                        mode = 'symbol',
                        maxwidth = 50,
                        ellipsis_char = '...',
                    })
                },
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                    end,
                },
                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    -- ['<C-Space>'] = cmp.mapping.complete(),
                    -- ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = "nvim_lsp_signature_help" },
                    -- { name = 'vsnip' }, -- For vsnip users.
                    { name = 'luasnip' }, -- For luasnip users.
                    -- { name = 'ultisnips' }, -- For ultisnips users.
                    -- { name = 'snippy' }, -- For snippy users.
                    { name = 'buffer' },
                })
            })

            cmp.setup.cmdline({ '/', '?' },{
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })

            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                },
                {
                    { name = 'cmdline' }
                })
            })
        end
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
    },
    {
        "saadparwaiz1/cmp_luasnip",
        lazy = true,
        dependencies = { "nvim-cmp" },
    },
    {
        "j-hui/fidget.nvim",
        lazy = true,
        event = 'CursorHold',
        config = function()
            require"fidget".setup{}
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = true,
        event = 'CursorHold',
        config = function()
        end,
    },
    {
        "ErichDonGubler/lsp_lines.nvim",
        lazy = true,
        event = 'CursorHold',
        config = function ()
            require("lsp_lines").setup()
            vim.diagnostic.config({
                virtual_text = false,
            })
            vim.keymap.set("n","<leader>l",require("lsp_lines").toggle,{ desc = "Toggle lsp_lines" })
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
        dependencies = { "nvim-tree/nvim-web-devicons" },
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
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        event = 'CursorHold'
    },
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        dependencies = {"nvim-tree/nvim-web-devicons"},
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
        -- require "lsp_signature".setup({
        --     bind = true,
        --     handler_opts = {
        --         border = "rounded"
        --     }
        -- })
    end,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.opt.completeopt = "menu,menuone,noselect"

