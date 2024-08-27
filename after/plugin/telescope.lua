local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>l", builtin.live_grep, {})
vim.keymap.set('n','<C-p>', ":lua require'telescope'.extensions.project.project{}<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "<leader>b", builtin.buffers, {})
