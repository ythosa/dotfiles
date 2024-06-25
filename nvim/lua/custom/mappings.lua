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

M.disabled = {
  n = {
    ["gd"] = "",
    ["gr"] = "",
  },
}

M.lspconfig = {
  n = {
    ["gd"] = { "<cmd>Telescope lsp_definitions<CR>", "definitions" },
    ["gr"] = { "<cmd>Telescope lsp_references <CR>", "references" },
    ["gi"] = { "<cmd>Telescope lsp_implementations <CR>", "implementations" },
  },
}

return M
