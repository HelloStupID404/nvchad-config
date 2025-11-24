require "nvchad.options"

-- add yours here!
local o = vim.o

o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.wrap = true
o.linebreak = true
o.textwidth = 80
o.cursorlineopt = "number"
o.shell= "cmd"

vim.cmd('cd %:p:h')
if vim.fn.getcwd() == 'D:\\LANG\\nvim-0.11.5\\bin' then
  vim.cmd('cd D:\\A8File\\AUTO')
end

vim.cmd [[
  hi DiagnosticUnderlineInfo  guisp=#5fb3ff gui=undercurl
  hi DiagnosticUnderlineError guisp=#ff5f5f gui=undercurl
  hi DiagnosticUnderlineWarn  guisp=#ffaa00 gui=undercurl
  hi DiagnosticUnderlineHint  guisp=#2CB13B gui=undercurl
]]
