-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "wqa", ":wqa<enter>", { silent = true, desc = "write quit all" })
vim.keymap.set("n", "qa", ":qa<enter>", { silent = true, desc = "quit all" })
vim.keymap.set("n", "qw", ":wq<enter>", { silent = true, desc = "write quit " })
vim.keymap.set("n", "wa", ":w<enter>", { silent = true, desc = "write  all" })
vim.keymap.set("n", "qq", ":q<enter>", { silent = true, desc = "quit" })

vim.keymap.set("i", "kj", "<Esc>")

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>Hm", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "harpoon quick menu" })
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "add a file to harpoon" })

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "go to  file 1" })
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "go to file 2" })
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "go to file 3" })
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "go to file 4" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>p", function()
  harpoon:list():prev()
end, { desc = "go to previous harpooned file" })
vim.keymap.set("n", "<leader>n", function()
  harpoon:list():next()
end, { desc = "go to next harpooned file" })
vim.keymap.set("n", "<leader>Hd", function()
  harpoon:list():clear()
end, { desc = "clear all harpooned files" })
