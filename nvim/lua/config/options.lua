-- Options are automatically loaded on the VeryLazy event
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional autocmds here

-- Overwrite line number colors for increased visibility
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#5295EB", bold = true })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#A6EE46", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#5295EB", bold = true })

vim.o.tabstop 		= 4
vim.o.expandtab 	= true
vim.o.softtabstop 	= 4
vim.o.shiftwidth 	= 4
