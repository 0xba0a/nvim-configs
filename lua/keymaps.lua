local opts = { noremap = true, silent = true }

local tree_api = require('nvim-tree.api')
vim.keymap.set('n', '<Leader>o', tree_api.tree.open, opts)
vim.keymap.set('n', '<Leader>b', tree_api.tree.toggle, opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<Leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, opts)
vim.keymap.set('n', '<Leader>fr', builtin.oldfiles, opts)

vim.keymap.set('n', '<Leader>d', ':Alpha <CR>', opts)

vim.keymap.set('n', '<Leader><Leader>', ':noh<CR>', opts)

vim.keymap.set('n', '<C-t>', ':TransparentToggle<CR>', opts)
