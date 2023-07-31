vim.g.mapleader = " "

vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- Movement
vim.keymap.set("n", "<C-e>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "E", "b")
vim.keymap.set("n", "U", "<C-r>")

-- Yank into system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Delete without yank
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<Q", "nop")

-- Indent everything
vim.keymap.set("n", "<leader>i", "gg=G''")

-- Lsp formatting
vim.keymap.set("n", "<leader>p", vim.lsp.buf.format)

-- Window movement
vim.keymap.set("n", "<A-h>", "<C-W>h")
vim.keymap.set("n", "<A-j>", "<C-W>j")
vim.keymap.set("n", "<A-k>", "<C-W>k")
vim.keymap.set("n", "<A-l>", "<C-W>l")

-- Open terminal
vim.keymap.set("n", "<leader><CR>", ":new +resize8 term://zsh<CR>")
