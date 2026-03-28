return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "👍",
          package_pending = "👉",
          package_uninstalled = "🙅"
        }
      }
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "dockerls",
        "emmet_language_server",
        "ts_ls",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
        "pyright",
        "clangd",
        "eslint",
        "quick_lint_js",
        "intelephense",
      },

      automatic_installation = true,
    })
  end,
}
