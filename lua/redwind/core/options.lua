local opt = vim.opt

--line numbers
opt.relativenumber = true
opt.number = true

--search settings
opt.ignorecase = true
opt.smartcase = true

--line wrapping
opt.wrap = false

--cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--window splitter
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
