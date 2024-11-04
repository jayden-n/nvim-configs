return {

	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				-- opts = {
				-- 	transparent_background = true,
				-- },
				integrations = {
					cmp = true,
					fidget = true,
					gitsigns = true,
					harpoon = true,
					indent_blankline = {
						enabled = false,
						scope_color = "sapphire",
						colored_indent_levels = false,
					},
					mason = true,
					noice = true,
					notify = true,
					symbols_outline = true,
					telescope = true,
					treesitter = true,
					treesitter_context = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
						underlines = {
							errors = { "undercurl" },
							hints = { "undercurl" },
							warnings = { "undercurl" },
							information = { "undercurl" },
						},
					},
				},
			})

			-- Hide all semantic highlights until upstream issues are resolved (https://github.com/catppuccin/nvim/issues/480)
			-- for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
			-- 	vim.api.nvim_set_hl(0, group, {})
			-- end
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
