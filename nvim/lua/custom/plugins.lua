local plugins = {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "gopls",
                "typescript-language-server",
                "eslint-lsp",
                "prettier"
            },
        },
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
    {
        "sindrets/diffview.nvim",
        lazy = false,
    },
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
        end
    },
    {
        "mfussenegger/nvim-dap",
        init = function()
            require("core.utils").load_mappings("dap")
        end
    },
    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function()
            require "custom.configs.lint"
        end
    },
    {
        "mhartington/formatter.nvim",
        event = "VeryLazy",
        opts = function()
            return require "custom.configs.formatter"
        end
    },
    {
        "dreamsofcode-io/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        config = function(_, opts)
            require("dap-go").setup(opts)
            require("core.utils").load_mappings("dap_go")
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "SmiteshP/nvim-navbuddy",
                dependencies = {
                    "SmiteshP/nvim-navic",
                    "MunifTanjim/nui.nvim"
                },
                opts = { lsp = { auto_attach = true } }
            }
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = "go",
        opts = function()
            return require "custom.configs.null-ls"
        end,
    },
--    {
--        "olexsmir/gopher.nvim",
--      ft = "go",
--      config = function(_, opts)
--          require("gopher").setup(opts)
--      end,
--      build = function()
--          vim.cmd [[silent! GoInstallDeps]]
--      end,
--  },
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        lazy = false,
        dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
        config = function ()
            require("custom.configs.treesitter-context").setup()
        end
    },
    {
        "princejoogie/dir-telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        event = "BufRead",
        config = function ()
            require("dir-telescope").setup({
                hidden = true,
                no_ignore = true,
                show_preview = true,
            })
            vim.keymap.set("n", "<leader>fd", "<cmd>Telescope dir live_grep<CR>", { noremap = true, silent = true })
            vim.keymap.set("n", "<leader>pd", "<cmd>Telescope dir find_files<CR>", { noremap = true, silent = true })
        end,
    },
    {
        "RRethy/vim-illuminate",
        lazy = false,
        config = function ()
            require("custom.configs.illuminate").setup()
        end,
    },
    {
        "karb94/neoscroll.nvim",
        lazy = false,
        config = function ()
            require('neoscroll').setup({
                mappings = {                 -- Keys to be mapped to their corresponding default scrolling animation
                    '<C-u>', '<C-d>',
                    '<C-b>', '<C-f>',
                    '<C-y>', '<C-e>',
                    'zt', 'zz', 'zb',
                },
                hide_cursor = true,          -- Hide cursor while scrolling
                stop_eof = true,             -- Stop at <EOF> when scrolling downwards
                respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
                cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
                easing = 'quadratic',           -- Default easing function
                pre_hook = nil,              -- Function to run before the scrolling animation starts
                post_hook = nil,             -- Function to run after the scrolling animation ends
                performance_mode = false,    -- Disable "Performance Mode" on all buffers.
            })
        end
    },
    {
        "pocco81/auto-save.nvim",
        event = "InsertLeave"
    }
}
return plugins
