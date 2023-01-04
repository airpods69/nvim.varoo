vim.g.mapleader = " "
vim.keymap.set("n", "<leader>n", vim.cmd.Ex)

-- This one is to not let paste hurt me
vim.keymap.set("x", "<leader>p", [["_dP]])
