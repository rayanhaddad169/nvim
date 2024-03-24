-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("catppuccin").setup({ transparent_background = true })
vim.cmd.colorscheme("catppuccin")
local user_config = { background_colour = "#000000" }
require("notify").setup(user_config)
