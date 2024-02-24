-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   config = function()
--     vim.cmd.colorscheme("kanagawa-dragon")
--   end
-- }
return {
  "olivercederborg/poimandres.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("poimandres")
  end
} 
