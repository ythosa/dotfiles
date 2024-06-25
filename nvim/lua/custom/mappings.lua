local M = {}

M.general = {
    n = {
        ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
        ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
        ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
        ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    }
}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add breakpoint at line"
        },
        ["<leader>dus"] = {
            function()
                local widgets = require('dap.ui.widgets');
                local sidebar = widgets.sidebar(widgets.scopes);
                sidebar.open();
            end,
            "Open debugging sidebar"
        }
    }
}

M.dap_go = {
    plugin = true,
    n = {
        ["<leader>dgt"] = {
            function()
                require('dap-go').debug_test()
            end,
            "Debug go test"
        },
        ["<leader>dgl"] = {
            function()
                require('dap-go').debug_last()
            end,
            "Debug last go test"
        }
    }
}

M.lspconfig = {
  n = {
    ["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "definitions" },
    ["gr"] = { "<cmd>Telescope lsp_references <CR>", "references" },
    ["gi"] = { "<cmd>Telescope lsp_implementations <CR>", "implementations" },
  },
}

M.telescope = {
    n = {
        ["<leader>fft"] = {
            function ()
                local api = require('nvim-tree.api')
                local node = api.tree.get_node_under_cursor()
                local path = node.absolute_path
                require('telescope.builtin').find_files {
                    prompt_title = "Search in " .. path,
                    cwd = path,
                }
            end,
            "Search files in selected tree node"
        },
        ["<leader>fwt"] = {
            function ()
                local api = require('nvim-tree.api')
                local node = api.tree.get_node_under_cursor()
                local path = node.absolute_path
                require('telescope.builtin').live_grep {
                    prompt_title = "Search in " .. path,
                    cwd = path,
                }
            end,
            "Search strings in selected tree node"
        },
    }
}

return M
