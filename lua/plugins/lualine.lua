return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			-- DISABLES LUALINE IN NVIM-TREE
			disabled_filetypes = { "NvimTree" },
		},
		extensions = { "nvim-tree" },
	},
}
