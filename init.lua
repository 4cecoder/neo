-- Setup the golang plugin
require('go').setup()

-- Add smart indent
vim.o.smartindent = true
--  Add Column
vim.o.colorcolumn = "80"
-- Add tabstop
vim.o.tabstop = 4
-- Add shiftwidth
vim.o.shiftwidth = 4
-- Turn on syntax highlighting
vim.o.syntax = "on"
-- Turn on hybrid line numbers
vim.o.number = true
vim.o.relativenumber = true
-- Turn on line wrapping
vim.o.wrap = true



-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)


-- keep all configs on one line
require'nvim-treesitter.configs'.setup{highlight={enable=true}}
