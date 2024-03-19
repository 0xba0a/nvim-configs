return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "ColorScheme",
  config = function()
    require("toggleterm").setup({
      size = 13,
      open_mapping = [[<c-\>]],
      shade_filetypes = {},
      start_in_insert = true,
      direction = "float",
      auto_scroll = true,
      autochdir = true,
      shade_terminals = false,
      shell = vim.fn.executable "powershell" == 1 and "powershell" or "pwsh",
   })
  end
}
