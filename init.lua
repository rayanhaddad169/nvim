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
          "/Users/rayan/.venv/lib/python3.12/site-packages/",
          "/home/rayan_haddad/.local/lib/python3.9/site-packages",
        },
        jedi = {
          extra_paths = {
            "/usr/local/lib/python3.9/dist-packages/",
            "/Users/rayan/.venv/lib/python3.12/site-packages/",
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

require("conform").setup({
  formatters = {
    black = {
      prepend_args = { "--line-length", "100" },
    },
  },
})

local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
      .new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      })
      :find()
end

vim.keymap.set("n", "<leader>h", function()
  toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })
