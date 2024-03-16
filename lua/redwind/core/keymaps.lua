vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "

local keymap = vim.keymap

--general kepmaps

keymap.set("i", "jk", "<ESC>") --Exit Insert mode

keymap.set("n", "<leader>nh", ":nohl<CR>") --Clear search field

keymap.set("n", "x", '"_x') --Delete without saving to buffer

keymap.set("n", "<leader>+", "<C-a>") --Increment a number up
keymap.set("n", "<leader>-", "<C-x>") --Increment a number down

keymap.set("n", "<leader>sv", "<C-w>v") --Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --Make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") --Close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") --Open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") --Close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --Go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --Go to previous tab

keymap.set('t', '<esc>', [[<C-\><C-n>]])

--Plugin keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") --Maximizes current window

