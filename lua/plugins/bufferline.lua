return {
    {
      "akinsho/bufferline.nvim",
      event = "VeryLazy",
      opts = {
        options = {
          mode = "buffers",
          numbers = "none",
          indicator = {
            icon = '▎',
            style = 'underline',
          },
          name_formatter = function(buf)
              return vim.fn.fnamemodify(buf.path, ":t")
          end,
          always_show_bufferline = true,
          show_buffer_close_icons = false,
          show_close_icon = false,
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true,
            },
          },
        },
      },
      keys = {
        { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
      },
    }
}
