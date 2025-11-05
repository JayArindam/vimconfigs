-- Toggle Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", "ggdG", { noremap = true, silent = true })

vim.keymap.set("n", "<A-h>", "<C-w>h") -- move to left window
vim.keymap.set("n", "<A-j>", "<C-w>j") -- move to window below
vim.keymap.set("n", "<A-k>", "<C-w>k") -- move to window above
vim.keymap.set("n", "<A-l>", "<C-w>l") -- move to right window

-- this can be used to copy stuff to the os clipboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })

-- Vertical split and Horizontal split
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })

-- Open current buffer in a vertical split or Horizontal Split
vim.keymap.set("n", "<leader>ev", ":vsplit %<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>eh", ":split %<CR>", { noremap = true, silent = true })

-- Find files using Telescope
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", { noremap = true, silent = true })
