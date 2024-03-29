-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local opt_test = {
  integrations = {
    aerial = true,
    alpha = true,
    cmp = true,
    dashboard = true,
    flash = true,
    gitsigns = true,
    headlines = true,
    illuminate = true,
    indent_blankline = { enabled = true },
    leap = true,
    lsp_trouble = true,
    mason = true,
    markdown = true,
    mini = true,
    native_lsp = {
      enabled = true,
      underlines = {
        errors = { "undercurl" },
        hints = { "undercurl" },
        warnings = { "undercurl" },
        information = { "undercurl" },
      },
    },
  },
  transparent_background = true,
}

require("catppuccin").setup(opt_test)
vim.cmd.colorscheme("catppuccin")
local user_config = { background_colour = "#000000" }
require("notify").setup(user_config)
