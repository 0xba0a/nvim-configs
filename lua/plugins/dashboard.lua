return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
    	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
    	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
    	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
      [[                                                    ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "New file", "<cmd>ene <CR>"),
      dashboard.button("Space b", "File tree"),
      dashboard.button("Space f f", "Find file"),
      dashboard.button("Space f b", "Find buffer"),
      dashboard.button("Space f r", "Recent files"),
      dashboard.button("Space h h", "Harpoon marks"),
      dashboard.button("F1", "Help")
    }

    _Gopts = {
      position = "center",
      hl = "Type",
      -- wrap = "overflow"
    }

    dashboard.section.footer.val = {
      [[                      ]],
      [[                      ]],
      [[                      ]],
      [[                      ]],
      [[                      ]],
      [[ Let the beauty of what you ]],
      [[    love be what you do.    ]],
      [[                      ]],
      [[                      ]],
      [[                      ]],
      [[                      ]],
      [[                      ]],
    }

    alpha.setup(dashboard.opts)
  end
}
