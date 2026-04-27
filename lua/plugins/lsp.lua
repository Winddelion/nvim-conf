return {
    -- Package manager for LSP servers, linters, formatters, etc.
    {"williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
        require("mason").setup()
    end},

    {"williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",        -- Lua
                "pyright",       -- Python
                "ts_ls",         -- TypeScript/JavaScript
                "rust_analyzer", -- Rust
                "gopls",         -- Go
                "clangd",        -- C/C++
                "jsonls",        -- JSON
                "yamlls",        -- YAML
                "dockerls",      -- Docker
                "html",          -- HTML
                "cssls",         -- CSS
            },
            automatic_installation = true,
        })
    end},

    {"neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- Setup keymaps and capabilities
        local lspconfig = require("lspconfig")
        -- Configure each server as needed
    end}
}

