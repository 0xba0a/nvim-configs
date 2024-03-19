local opts = { noremap = true, silent = true }

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "J", "mzJ`z", opts)

vim.keymap.set("x", "<leader>p", "\"_dP", opts)

vim.keymap.set("n", "<leader><Leader>n", ":noh<CR>", opts)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)

vim.keymap.set("n", "<leader>sp", ":split<CR>", opts)
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", opts)

vim.keymap.set("n", "<leader>m", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
vim.keymap.set("v", "<leader>m", [[:s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

local tree_api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>o", tree_api.tree.open, opts)
vim.keymap.set("n", "<leader>b", tree_api.tree.toggle, opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)
vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts)
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, opts)
vim.keymap.set("n", "<leader>hh", ":Telescope harpoon marks<CR>", opts)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, opts)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, opts)
-- vim.keymap.set("n", "", function() ui.nav_file(1) end, opts)

vim.keymap.set("n", "<leader>d", vim.cmd.Alpha, opts)

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, opts)

vim.keymap.set("n", "<leader>gs", vim.cmd.Git, opts)

vim.keymap.set("n", "<leader>zz", "<cmd> lua vim.diagnostic.open_float() <CR>", opts)
vim.keymap.set("n", "<leader>zn", "<cmd> lua vim.diagnostic.goto_next() <CR>", opts)
vim.keymap.set("n", "<leader>zp", "<cmd> lua vim.diagnostic.goto_prev() <CR>", opts)
