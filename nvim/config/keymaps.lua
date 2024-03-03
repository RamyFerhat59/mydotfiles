-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del
del("n", "s", { noremap = true })
del("n", "f", { noremap = true })
map("n", "s", "cl", { desc = "Delete character on cursor and start insert mode" })
map({ "n", "i", "x", "s" }, "<c-q>", "<cmd>wq!<cr><esc>", { desc = "Save and quit" })
map({ "n", "i", "x", "s" }, "<c-a>", "<cmd>q!<cr><esc>", { desc = "Quit" })
map("n", "f", "<cmd>lua require('flash').jump()<cr>", { desc = "flash jump" })
map("n", "<leader>w", "<cmd> Telescope live_grep<cr>", { desc = "Grep (root dir)" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Next buffer" })
map("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Close buffer" })
map("n", "<leader>bt", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
map("i", "<c-o>", "copilot#Accept('<CR>')", { silent = true, expr = true, noremap = true, replace_keycodes = false })
map("i", "<c-e>", "copilot#Next()", { silent = true, expr = true, noremap = true, replace_keycodes = false })
