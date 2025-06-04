-- neo-tree.nvim setup
vim.keymap.set('n', '<leader>ns', ':Neotree toggle reveal_force_cwd<CR>')
vim.keymap.set('n', '<leader>nc', ':Neotree toggle current reveal_force_cwd<CR>')
vim.keymap.set('n', '<leader>nf', ':Neotree toggle float reveal_file=<cfile> reveal_force_cwd<CR>')
vim.keymap.set('n', '<leader>nb', ':Neotree toggle buffers right<CR>')
vim.keymap.set('n', '<leader>ng', ':Neotree float git_status<CR>')
