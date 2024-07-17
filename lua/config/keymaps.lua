-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "wqa", ":wqa<enter>", { silent = true })
vim.keymap.set("n", "qa", ":qa<enter>", { silent = true })
vim.keymap.set("n", "qw", ":wq<enter>", { silent = true })
vim.keymap.set("n", "wa", ":w<enter>", { silent = true })
vim.keymap.set("n", "qq", ":q<enter>", { silent = true })

vim.keymap.set("i", "kj", "<Esc>")

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>H", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>p", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<leader>n", function()
  harpoon:list():next()
end)
