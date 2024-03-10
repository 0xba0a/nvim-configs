return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')
    require("mason").setup({})
    lspconfig.tsserver.setup({})
    lspconfig.glsl_analyzer.setup({})
    lspconfig.wgsl_analyzer.setup({})
    lspconfig.lua_ls.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.clangd.setup({})
    lspconfig.tailwindcss.setup({})
  end
}
