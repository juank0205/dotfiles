return {
	'akinsho/flutter-tools.nvim',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		'stevearc/dressing.nvim', -- optional for vim.ui.select
	},
	config = function()
		require("flutter-tools").setup {
			widget_guides = {
				enabled = true,
			},
			closing_tags = {
				enabled = false
			},
			lsp = {
				color = {
					enabled = true,
					background = false,
					background_color = { r = 19, g = 17, b = 24 },
					foreground = false,
					virtual_text = true,
					virtual_text_str = '■',
				},
			}
		}
	end,
}
