return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
  },
}
