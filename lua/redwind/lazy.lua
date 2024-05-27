local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- :command Trm :term

require("lazy").setup({ { import = "redwind.plugins" }, { import = "redwind.plugins.lsp" } })
require("notify").setup({ background_colour = "#000000" })
-- require("obsidian").setup({ import = "redwind.plugins.obsidian-nvim" })

-- vim.api.nvim_create_user_command('Term', ':terminal', {})
-- vim.cmd.Term()

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     vim.cmd("NvimTreeToggle")
--   end,
-- })
