return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  config = function()
    require("kanagawa").setup({
      commentStyle = {
        italic = false
      },
      keywordStyle= {
        italic = false
      },
      statementStyle = {
        bold = false
      },
      transparent = true,
      colors =
      {
        theme =
        {
          all =
          {
            ui =
            {
              float =
              {
                bg = "none"
              },
              bg_gutter = "none"
            }
          }
        }
      },
      theme = "wave",
      background = {
        dark = "dragon",
        light = "lotus"
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          ["@variable.builtin"] = { italic = false },
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },  -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    })
    vim.cmd("colorscheme kanagawa")
    vim.cmd("highlight TelescopeBorder guibg=none")
    vim.cmd("highlight TelescopeTitle guibg=none")
    -- vim.cmd("highlight LineNr guibg=none")
    -- vim.cmd("highlight SignColumn guibg=none")
  end
}
