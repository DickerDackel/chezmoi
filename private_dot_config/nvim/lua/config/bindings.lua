-- ---------------------------------------------------------------------
-- from kickstart.vim
-- ---------------------------------------------------------------------
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- ---------------------------------------------------------------------
-- Mine...
-- ---------------------------------------------------------------------
vim.keymap.set("n", "<C-p>", "<cmd>Files<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-j>", function()
	vim.diagnostic.jump({ count = 1, float = true })
end)
vim.keymap.set("n", "<C-k>", function()
	vim.diagnostic.jump({ count = -1, float = true })
end)

vim.keymap.set("n", "<leader><Space>", "dip0<Esc>")
vim.keymap.set("n", "<leader>n", "<cmd>set invnumber<CR>")

vim.keymap.set("n", "<leader>F", "<cmd>set foldmethod=indent<CR>")
vim.keymap.set("n", "<leader>Q", "!!$SHELL<CR>")
vim.keymap.set("n", "<leader>cc", "!!figlet -t -f rectangles<CR>")

vim.keymap.set("n", "<leader>e", 'yy:@"<CR>')
vim.keymap.set("n", "<leader>f", "<cmd>set foldmethod=manual<CR>")
vim.keymap.set("n", "<leader>g", "<cmd>GFiles<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>set invhlsearch<CR>")
vim.keymap.set("n", "<leader>n", "<cmd>set invnumber<CR>")
vim.keymap.set("n", "<leader>p", "<cmd>set invpaste<CR>")
vim.keymap.set("n", "<leader>r", "<cmd>Rg<Cr>")
vim.keymap.set("n", "<leader>t", "<cmd>TagbarToggle<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>set invwrap<CR>")
vim.keymap.set("n", "<leader>R", "<cmd>LSPRestart<CR>")
vim.keymap.set("n", "-", "<cmd>split | Oil<CR>", { noremap = true, silent = true, desc = "Open Oil in split" })
vim.keymap.set("n", "<leader>|", "<cmd>vsplit | Oil<CR>", { noremap = true, silent = true, desc = "Open Oil in vsplit" })
-- I hate accidental clicks from the touchpad, but I like scrolling
-- vim.keymap.set({'n', 'i', 'v', 'c', 'x'}, "<LeftMouse>", "<nop>", {desc="No more accidental clicks on the touchpad"})
vim.keymap.set("n", "\\\\", "<cmd>Buffers<CR>")
vim.keymap.set("n", "<leader>O", "<cmd>ObsidianSearch<CR>")

local opts = { noremap=true, silent=false }
vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zf", "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", opts)
vim.api.nvim_set_keymap("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)
