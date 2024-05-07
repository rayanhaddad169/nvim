-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "wqa", ":wqa<enter>", { silent = true })
vim.keymap.set("n", "qa", ":qa<enter>", { silent = true })
vim.keymap.set("n", "qq", ":q<enter>", { silent = true })
--- Harpoon ui keymap
vim.keymap.set("n", "<leader>h", ":Telescope harpoon marks<enter>", { silent = true, desc = "Harpoon" })
vim.keymap.set(
  "n",
  "<leader>H",
  ":lua require('').toggle_quick_menu()<enter>",
  { silent = true, desc = "harpoon ui" }
)
vim.keymap.set(
  "n",
  "<leader>a",
  ":lua require('harpoon.mark').add_file()<enter>",
  { silent = true, desc = "add file to harpoon" }
)
-- Harpoon navigation file
vim.keymap.set(
  "n",
  "<leader>n",
  ":lua require('harpoon.ui').nav_next()<enter>",
  { silent = true, desc = "next harp file" }
)
vim.keymap.set(
  "n",
  "<leader>p",
  ":lua require('harpoon.ui').nav_prev()<enter>",
  { silent = true, desc = "previous harp file" }
)

vim.keymap.set(
  "n",
  "<leader>t1",
  ":lua require('harpoon.ui').nav_file(1)<enter>",
  { silent = true, desc = "go to file 1 in harpoon" }
)
vim.keymap.set(
  "n",
  "<leader>t2",
  ":lua require('harpoon.ui').nav_file(2)<enter>",
  { silent = true, desc = "go to file 2 in harpoon" }
)
vim.keymap.set(
  "n",
  "<leader>t3",
  ":lua require('harpoon.ui').nav_file(3)<enter>",
  { silent = true, desc = "go to file 3 in harpoon" }
)
vim.keymap.set(
  "n",
  "<leader>t4",
  ":lua require('harpoon.ui').nav_file(4)<enter>",
  { silent = true, desc = "go to file 4 in harpoon" }
)

vim.keymap.set(
  "n",
  "<leader>d1",
  ":lua require('harpoon.ui').toggle_quick_menu()<enter>1Gdd",
  { silent = true, desc = "delete file 1 from harpoon" }
)
vim.keymap.set(
  "n",
  "<leader>d2",
  ":lua require('harpoon.ui').toggle_quick_menu()<enter>2Gdd",
  { silent = true, desc = "delete file 2 from harpoon" }
)
vim.keymap.set(
  "n",
  "<leader>d3",
  ":lua require('harpoon.ui').toggle_quick_menu()<enter>3Gdd",
  { silent = true, desc = "delete file 3 from harpoon" }
)
vim.keymap.set(
  "n",
  "<leader>d4",
  ":lua require('harpoon.ui').toggle_quick_menu()<enter>4Gdd",
  { silent = true, desc = "delete file 4 from harpoon" }
)
-- remap esc
vim.keymap.set("i", "kj", "<Esc>")
