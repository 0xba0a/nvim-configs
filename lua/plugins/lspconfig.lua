return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Managing language servers individually
    -- pyright
    lspconfig.pyright.setup({
      capabilities = capabilities,
    })

    -- tsserver
    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })

    -- glsl_analyzer
    lspconfig.glsl_analyzer.setup({
      capabilities = capabilities,
    })

    -- rust_analyzer
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      -- Server-specific settings. See `:help lspconfig-setup`
      settings = {
        ["rust-analyzer"] = {},
      },
    })

    -- clangd
    lspconfig.clangd.setup({
      capabilities = capabilities,
      cmd = {
        "clangd",
        "--offset-encoding=utf-16",
      },
    })

    -- html
    lspconfig.html.setup({
      capabilities = capabilities,
    })

    -- configure emmet language server
    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
      filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
    })

    -- Lua LS
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    -- CSS LS
    lspconfig.cssls.setup({
      capabilities = capabilities,
    })

    -- Tailwind
    -- Support for tailwind auto completion
    lspconfig.tailwindcss.setup({
      capabilities = capabilities,
    })
  end,
}
