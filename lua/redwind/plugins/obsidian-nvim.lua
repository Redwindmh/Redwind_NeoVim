return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "黒曜岩",
        path = "~/Documents/黒曜岩",
      },
    },
    templates = {
      folder = "Obsidian/Templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    daily_notes = {
      folder = "Obsidian/DiaryOfAMadman",
      date_format = "%A, %B %d, %Y",
      template = "madman_template.md"
    },
  },
}
