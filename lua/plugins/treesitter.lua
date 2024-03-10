return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "glsl",
        "rust",
        "vim",
        "vimdoc",
        "query",
      },

      auto_install = true,

      highlight = {
        enable = false,
        additional_vim_regex_highlighting = false,
      },

      autotag = {
        enable = true,
        filetypes = {
          "html",
          "tsx",
        }
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Leader>ss",
          node_incremental = "<Leader>si",
          scope_incremental = "<Leader>sc",
          node_decremental = "<Leader>sd",
        }
      },

      textobjects = {
        select = {
          enable = true,

          lookahead = true,

          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
          },

          selection_modes = {
            ['@parameter.outer'] = 'v', -- charwise
            ['@function.outer'] = 'V', -- linewise
            ['@class.outer'] = '<c-v>', -- blockwise
          },

          include_surrounding_whitespace = true,
        }
      },
    })
  end 
}
