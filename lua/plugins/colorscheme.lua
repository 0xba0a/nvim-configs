--[[ return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  config = function()
    -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })   
    -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.cmd.colorscheme("kanagawa-dragon")
  end
} ]]
return {
  "morhetz/gruvbox",
  lazy = false,
  config = function()
    vim.g.gruvbox_contrast_dark = "medium"
    vim.cmd.colorscheme("gruvbox")
  end
}
