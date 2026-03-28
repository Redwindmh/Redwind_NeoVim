local lazy = require("lazy")

local theme_keys = { "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "e0" }

local themes = {
  {
    name = "nightfly",
    plugin = nil,
    apply = function()
      vim.g.nightflyTransparent = true
      vim.cmd.colorscheme("nightfly")
    end,
  },
  {
    name = "tokyonight",
    plugin = "theme-tokyonight",
    apply = function()
      require("tokyonight").setup({ transparent = true })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
  {
    name = "catppuccin-mocha",
    plugin = "theme-catppuccin",
    apply = function()
      require("catppuccin").setup({ flavour = "mocha", transparent_background = true })
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    name = "gruvbox",
    plugin = "theme-gruvbox",
    apply = function()
      require("gruvbox").setup({ contrast = "hard", transparent_mode = true })
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
    name = "onedark",
    plugin = "theme-onedark",
    apply = function()
      require("onedark").setup({ style = "dark", transparent = true })
      vim.cmd.colorscheme("onedark")
    end,
  },
  {
    name = "kanagawa",
    plugin = "theme-kanagawa",
    apply = function()
      require("kanagawa").setup({ transparent = true })
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    name = "dracula",
    plugin = "theme-dracula",
    apply = function()
      require("dracula").setup({ transparent_bg = true })
      vim.cmd.colorscheme("dracula")
    end,
  },
  {
    name = "nord",
    plugin = "theme-nord",
    apply = function()
      vim.g.nord_disable_background = true
      vim.cmd.colorscheme("nord")
    end,
  },
  {
    name = "rose-pine",
    plugin = "theme-rose-pine",
    apply = function()
      require("rose-pine").setup({ styles = { transparency = true } })
      vim.cmd.colorscheme("rose-pine")
    end,
  },
  {
    name = "everforest",
    plugin = "theme-everforest",
    apply = function()
      require("everforest").setup({ transparent_background_level = 2 })
      vim.cmd.colorscheme("everforest")
    end,
  },
}

local function register_theme_keymaps()
  for i, key in ipairs(theme_keys) do
    local theme = themes[i]
    vim.keymap.set("n", "<leader>" .. key, function()
      if theme.plugin then
        lazy.load({ plugins = { theme.plugin } })
      end
      theme.apply()
    end, { desc = "Theme: " .. theme.name })
  end
end

return {
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly-colors",
    priority = 1000,
    config = function()
      vim.g.nightflyTransparent = true
      vim.cmd.colorscheme("nightfly")
      register_theme_keymaps()
    end,
  },
  { "folke/tokyonight.nvim",    name = "theme-tokyonight", lazy = true },
  { "catppuccin/nvim",          name = "theme-catppuccin", lazy = true },
  { "ellisonleao/gruvbox.nvim", name = "theme-gruvbox",    lazy = true },
  { "navarasu/onedark.nvim",    name = "theme-onedark",    lazy = true },
  { "rebelot/kanagawa.nvim",    name = "theme-kanagawa",   lazy = true },
  { "Mofiqul/dracula.nvim",     name = "theme-dracula",    lazy = true },
  { "shaunsingh/nord.nvim",     name = "theme-nord",       lazy = true },
  { "rose-pine/neovim",         name = "theme-rose-pine",  lazy = true },
  { "neanias/everforest-nvim",  name = "theme-everforest", lazy = true },
}
