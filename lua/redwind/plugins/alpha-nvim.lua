return {
  "goolord/alpha-nvim",
  dependancies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    -- local dashboard = require("alpha.themes.startify")

    dashboard.opts.layout[1].val = 2
    dashboard.opts.opts.margin = 25

    -- disable MRU
    -- dashboard.section.mru.val = { { type = "padding", val = 0 } }

    dashboard.section.header.val = {
      [[                                                                                                           ]],
      [[ ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗                                            ]],
      [[ ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝                                            ]],
      [[ ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗                                              ]],
      [[ ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝                                              ]],
      [[ ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗▄█╗                                         ]],
      [[  ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝                                         ]],
      [[                                                                                                           ]],
      [[ ████████╗███████╗ ██████╗██╗  ██╗███╗   ██╗ ██████╗ ███╗   ███╗ █████╗ ███╗   ██╗ ██████╗███████╗██████╗  ]],
      [[ ╚══██╔══╝██╔════╝██╔════╝██║  ██║████╗  ██║██╔═══██╗████╗ ████║██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗ ]],
      [[    ██║   █████╗  ██║     ███████║██╔██╗ ██║██║   ██║██╔████╔██║███████║██╔██╗ ██║██║     █████╗  ██████╔╝ ]],
      [[    ██║   ██╔══╝  ██║     ██╔══██║██║╚██╗██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║     ██╔══╝  ██╔══██╗ ]],
      [[    ██║   ███████╗╚██████╗██║  ██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║╚██████╗███████╗██║  ██║ ]],
      [[    ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═╝  ╚═╝ ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "󱍅   Create new spell", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "   Recent spells", "<cmd> Telescope oldfiles <CR>"),
      dashboard.button("f", "󱡄   Find a spell", "<cmd>Telescope find_files<cr>"),
      dashboard.button("c", "   Neovim tinkering", ":e ~/.config/nvim/ <CR>"),
      dashboard.button("t", "   Plant a tree", ":NvimTreeOpen<CR>"),
      dashboard.button("q", "󱠢   Escape", ":qa<CR>"),
    }

    local function footer()
      return "Add some fun quotes here, maybe?"
    end

    dashboard.section.footer.val = footer()

    alpha.setup(dashboard.opts)
  end,
}
