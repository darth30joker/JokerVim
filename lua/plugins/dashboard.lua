return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = {
      theme = "hyper",
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            desc = " Update",
            group = "@property",
            action = "Lazy update",
            key = "u",
          },
          {
            desc = " Files",
            group = "Label",
            action = "Telescope find_files",
            key = "f",
          },
          {
            desc = " Recent",
            group = "DiagnosticHint",
            action = "Telescope oldfiles",
            key = "r",
          },
          {
            desc = " Quit",
            group = "DiagnosticError",
            action = "quit",
            key = "q",
          },
        },
      },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
