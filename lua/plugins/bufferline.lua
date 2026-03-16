return {
    {
      "akinsho/bufferline.nvim",
      dependencies = 'nvim-tree/nvim-web-devicons',
      event = "VeryLazy",
      opts = {
        options = {
          always_show_bufferline = true,
        },
      },
      config = function(_, opts)
        require("bufferline").setup(opts)
        -- Fix bufferline when restoring a session
        vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
          callback = function()
            vim.schedule(function()
              pcall(nvim_bufferline)
            end)
          end,
        })
      end,
    }
}
