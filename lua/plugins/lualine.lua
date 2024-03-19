return {
  "nvim-lualine/lualine.nvim",
  event = "ColorScheme",
  config = function()
    -- Custom Components
    local function hello()
      return [[My Nissowa.]]
    end

    local kanagawa_dragon = require("lualine.themes.auto")
    kanagawa_dragon.normal.c.bg = "none"
    kanagawa_dragon.inactive.c.bg = "none"

    require("lualine").setup({
      options = {
        theme = kanagawa_dragon,
        globalstatus = true,
        disabled_filetypes = {
          "Lazy",
          "NvimTree",
          "TelescopePrompt",
          "alpha",
          "toggleterm",
          "harpoon",
        },
        component_separators =
        {
          left = "",
          right = ""
        },
        section_separators =
        {
          left = "",
          right = "",
        }
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          -- "branch",
          -- "diff",
          {
            "diagnostics",
            symbols = {error = "E-", warn = "W-", info = "I-", hint = "H-"},
          },
        },
        lualine_c = {
          {
            "filename",
            file_status = true,
            path = 1,
          },
        },
        lualine_x = {
          "hostname",
          {
            "datetime",
            style = "%H:%M"
          },
          -- "encoding",
          "filetype",
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      tabline = {}
    })
  end
}
