return {
  "tikhomirov/vim-glsl",
  -- event = { "BufNewFile", "BufReadPre" },
  config = function ()
    vim.cmd([[autocmd! BufNewFile,BufRead,BufReadPre *.vs,*.fs set ft=glsl]])
  end
}
