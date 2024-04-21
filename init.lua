-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("notify").setup({ background_colour = "#000000" })

vim.cmd.colorscheme("catppuccin")

require("lspconfig").pylsp.setup({
  settings = {
    pylsp = {
      plugins = {
        extra_paths = {
          "/usr/local/lib/python3.9/dist-packages/",
          "/home/rayan_haddad/.local/lib/python3.9/site-packages",
        },
        jedi = {
          extra_paths = {
            "/usr/local/lib/python3.9/dist-packages/",
            "/home/rayan_haddad/.local/lib/python3.9/site-packages",
          },
        },
        pycodestyle = {
          ignore = { "E731,W503,D205,D415,D209,E203" },
          maxLineLength = 100,
          ignore_filetype = { "__init__.py" },
        },
      },
    },
  },
})

vim.keymap.set("n", "<leader>u", require("undotree").toggle, { noremap = true, silent = true })

require("telescope").load_extension("harpoon")

require("conform").setup({
  formatters = {
    black = {
      prepend_args = { "--line-length", "100" },
    },
  },
})
