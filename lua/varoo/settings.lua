local set = vim.opt

vim.g.python3_host_prog = '~/.config/nvim/env/bin/python'
vim.g.loaded_python3_provider = nill

set.tabstop=4
set.softtabstop=4
set.shiftwidth=4


set.nu = true
set.relativenumber = true

set.smartindent = true
set.wrap = false

set.swapfile = false
set.backup = false
set.undodir = os.getenv('HOME') .. "/.vim/undodir/"
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.splitright = true
set.splitbelow = true

set.termguicolors = true

set.scrolloff = 8
set.signcolumn = "yes"

set.updatetime = 50

-- Status line -- 
local fn, cmd = vim.fn, vim.cmd

function my_statusline()
  local branch = fn.FugitiveHead()

  if branch and #branch > 0 then
    branch = '  '..branch
  end

  return branch..' %f%m%=%l:%c'
end

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
  desc = 'Trim trailing white spaces',
  pattern = 'bash,c,cpp,lua,java,go,php,javascript,make,python,rust,perl,sql,markdown',
  callback = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '<buffer>',
      -- Trim trailing whitespaces
      callback = function()
        -- Save cursor position to restore later
        local curpos = vim.api.nvim_win_get_cursor(0)
        -- Search and replace trailing whitespaces
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.api.nvim_win_set_cursor(0, curpos)
      end,
    })
  end,
})

cmd[[ set statusline=%!luaeval('my_statusline()') ]]
