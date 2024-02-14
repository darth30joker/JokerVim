return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
	local nvimtree = require("nvim-tree")

	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

	nvimtree.setup({
            view = {
                width = 40,
	    }
	})

	local keymap = vim.keymap

	keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
    end
}
