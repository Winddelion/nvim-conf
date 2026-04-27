-- Add these plugins to your lazy.nvim spec
return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- cmp dependencies
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- Example: configure lua_ls
      require("lspconfig").lua_ls.setup({
        capabilities = capabilities,
      })
      -- Add other LSP servers here
    end,
  },

  -- nvim-cmp main plugin
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      -- For vsnip users
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      -- For luasnip users (uncomment if using)
      -- "L3MON4D3/LuaSnip",
      -- "saadparwaiz1/cmp_luasnip",
      -- For mini.snippets users (uncomment if using)
      -- "echasnovski/mini.snippets",
      -- "abeldekat/cmp-mini-snippets",
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            -- For vsnip users
            vim.fn["vsnip#anonymous"](args.body)
            -- For luasnip users (uncomment if using)
            -- require('luasnip').lsp_expand(args.body)
            -- For native neovim snippets (Neovim v0.10+)
            -- vim.snippet.expand(args.body)
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "vsnip" }, -- For vsnip users
          -- { name = "luasnip" }, -- For luasnip users
          -- { name = "buffer" },
        }, {
          { name = "buffer" },
        }),
      })

      -- Use buffer source for `/` and `?`
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- Use cmdline & path source for ':'
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
        matching = { disallow_symbol_nonprefix_matching = false },
      })
    end,
  },
}
