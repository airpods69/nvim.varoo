-- nvim-treesitter new API (Neovim 0.11+): the `nvim-treesitter.configs` module was
-- removed in the rewrite. Highlighting now uses Neovim's built-in `vim.treesitter`;
-- parsers are installed through the plugin's `.install`.

-- Ensure core parsers are installed (async; no-op if already present).
require('nvim-treesitter').install { 'c', 'lua', 'rust', 'python' }

-- Enable treesitter highlighting for any filetype that has a parser installed.
-- pcall: filetypes without a parser start as a no-op instead of erroring.
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
