-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local opt = {
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

require("catppuccin").setup(opt)
vim.cmd.colorscheme("catppuccin")
local user_config = { background_colour = "#000000" }
require("notify").setup(user_config)

local undotree = require("undotree")

undotree.setup({
  float_diff = true, -- using float window previews diff, set this `true` will disable layout option
  layout = "left_bottom", -- "left_bottom", "left_left_bottom"
  position = "left", -- "right", "bottom"
  ignore_filetype = { "undotree", "undotreeDiff", "qf", "TelescopePrompt", "spectre_panel", "tsplayground" },
  window = {
    winblend = 30,
  },
  keymaps = {
    ["j"] = "move_next",
    ["k"] = "move_prev",
    ["gj"] = "move2parent",
    ["J"] = "move_change_next",
    ["K"] = "move_change_prev",
    ["<cr>"] = "action_enter",
    ["p"] = "enter_diffbuf",
    ["q"] = "quit",
  },
})
vim.keymap.set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })

local opts = {
  filesystem = {
    filtered_items = {
      visible = false,
      always_show = { -- remains visible even if other settings would normally hide it
        ".zshrc",
        ".gitignore",
      },
      show_hidden_count = true,
      hide_dotfiles = true,
    },
  },
}
require("neo-tree").setup(opts)
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pylsp" },
})

require("lspconfig").pylsp.setup({
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "E731,W503,D205,D415,D209,E203" },
          maxLineLength = 120,
          ignore_filetype = { "__init__.py" },
        },
      },
    },
  },
})
