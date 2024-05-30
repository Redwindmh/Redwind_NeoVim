return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local noice = require("noice")
    noice.setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      notify = {
        -- Add keymap to close notifications here
        vim.keymap.set("n", "<leader>nx", function() require("notify").dismiss() end)
      }
    })
  end,
}
