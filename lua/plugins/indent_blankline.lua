return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufEnter",
		opts = {
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = { enabled = false },
			exclude = {
				filetypes = {
					"help",
					"lazy",
					"mason",
					"notify",
					"oil",
					"nvimtree",
					"dashboard",
				},
			},
		},
		main = "ibl",
	},
}
