vim.g.python3_host_prog = "C:/Users/lanovo/AppData/Local/Programs/Python/Python39/python.exe"
require("config.lazy")

-- Always split to the right
vim.opt.splitright = true

-- Always split below
vim.opt.splitbelow = true

vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- small dot
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -Command"
vim.opt.shellquote = '"'
vim.opt.shellxquote = ""
vim.opt.number = true
vim.opt.tabstop = 4       -- number of visual spaces per TAB
vim.opt.shiftwidth = 4    -- number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true  -- convert TABs to spaces
vim.opt.smartindent = true -- autoindent new lines
