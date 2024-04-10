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
				enabled = true,
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
		vim.keymap.set({ "n" }, "<leader>Fl", ":vnew | buffer __FLUTTER_DEV_LOG__<CR>",
			{ remap = false, desc = "Open flutter dev log in vertical split" })
		vim.keymap.set("n", "<leader>Fr", vim.cmd.FlutterRun, { remap = false, desc = "FlutterRun" })
		vim.keymap.set("n", "<leader>Fq", vim.cmd.FlutterQuit, { remap = false, desc = "FlutterQuit" })
		vim.keymap.set("n", "<leader>Rr", vim.cmd.RustRun, { remap = false, desc = "FlutterQuit" })
	end,
}
