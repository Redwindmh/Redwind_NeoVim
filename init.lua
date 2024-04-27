require("redwind.core.options")
require("redwind.core.keymaps")
require("redwind.lazy")

vim.api.nvim_create_user_command('Term',
  'echo "Opening terminal, just the way you like!" | :split | :resize -5 | :terminal', {})
-- vim.cmd.Term()
