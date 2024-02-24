return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      
      hijack_cursor = true,

      view = {
        centralize_selection = false,
        width = 35,
        side = "right",
        number = true,
        relativenumber = true,
        float = {
          enable = false,
        }
      },

      filters = {
        dotfiles = true,
      },

      renderer = {
        add_trailing = true,
        indent_width = 2,
        indent_markers = {
          enable = false,
          inline_arrows = false, 
        },
        icons = {
          web_devicons = {
            file = {
              enable = false
            },
            folder = {
              enable = false
            }
          },
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
          }
        }
      },
    })
  end
}
