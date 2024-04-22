return {
  "williamboman/mason.nvim",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_tool_installer = require("mason-tool-installer")

    local masonlsp = require("mason-lspconfig")

    local lint = require("lint")

    local formatter = require("conform")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "docformatter",
        "pylsp",
      },
      automatic_installation = { exclude = "black" },
    })

    masonlsp.setup({
      ensure_installed = { "pylsp" },
    })

    formatter.setup({
      formatters_by_ft = {
        python = { "isort", "black", "docformatter" },
      },
    })

    lint.linters_by_ft = {
      python = { "pylint" },
    }
  end,
}
