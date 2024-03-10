return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "clangd",
        "tsserver",
        "glsl_analyzer",
        "wgsl_analyzer",
        "cssls",
        "tailwindcss",
      },
      automatic_installation = true,
    })
  end
}
