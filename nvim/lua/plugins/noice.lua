return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
   "rcarriga/nvim-notify",
  },
  config = function()
	local noice = require("noice")

	noice.setup({
		cmdline = {
			enabled = true, -- enables the Noice cmdline UI
			view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
			---@type table<string, CmdlineFormat>
			format = {
			  -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
			  -- view: (default is cmdline view)
			  -- icon_hl_group: optional hl_group for the icon
			  -- title: set to anything or empty string to hide
			  cmdline = { pattern = "^:", icon = ">_", lang = "vim" },
			  search_down = { kind = "search", pattern = "^/", icon = "/_", lang = "regex" },
			  search_up = { kind = "search", pattern = "^%?", icon = "/_", lang = "regex" },
			  filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
			  lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "lua: ", lang = "lua" },
			  help = { pattern = "^:%s*he?l?p?%s+", icon = "?_" },
			  input = {}, -- Used by input()
			  -- lua = false, -- to disable a format, set to `false`
			},
		},
		presets = {
			command_palette = true, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = false, -- add a border to hover docs and signature help
		},
    })
  end
}
