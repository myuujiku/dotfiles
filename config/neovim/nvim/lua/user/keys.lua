local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal Mode
    -- Window navigation
    keymap("n", "<C-h>", "<C-w>h", opts)
    keymap("n", "<C-j>", "<C-w>j", opts)
    keymap("n", "<C-k>", "<C-w>k", opts)
    keymap("n", "<C-l>", "<C-w>l", opts)

    -- Switch [e]xplore
    keymap("n", "<leader>e", ":Lex 28<cr>", opts)

    -- Resize
    keymap("n", "<C-Down>", ":resize +2<CR>", opts)
    keymap("n", "<C-Up>", ":resize -2<CR>", opts)
    keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
    keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)

    -- Buffers
    keymap("n", "<S-l>", ":bnext<CR>", opts)
    keymap("n", "<S-h>", ":bprevious<CR>", opts)

    -- [n]o [h]ightlighting
    keymap("n", "<leader>nh", ":noh<CR>", opts)

-- Insert Mode

-- Visual Mode
    -- Keep indenting
    keymap("v", "<", "<gv", opts)
    keymap("v", ">", ">gv", opts)

    -- Don't put replaced text into register
    keymap("v", "p", '"_dP', opts)

-- Visual Block Mode
    -- Move selection up/down
    keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
    keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
