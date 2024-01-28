vim.g.mapleader = " "
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)
-- This one is to not let paste hurt me
vim.keymap.set("x", "<leader>p", [["_dP]])

-- For next and previous tab
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprev)

-- For closing current buffer
vim.keymap.set("n", "<leader>x", vim.cmd.bd)

-- Copy Paste
vim.keymap.set({"x"}, "<C-c>", [["+y]])
vim.keymap.set({"n","i"}, "<C-v>", [[<ESC>"+p <S-a>]])

if vim.g.neovide == true then
	vim.api.nvim_set_keymap("n", "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
	vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
	vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end
