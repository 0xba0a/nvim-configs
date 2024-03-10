return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 13,
      open_mapping = [[<c-\>]],
      shade_filetypes = {},
      start_in_insert = true,
      direction = 'horizontal',
      auto_scroll = true,
      autochdir = true,
      shade_terminals = false,
   })
  end
}
