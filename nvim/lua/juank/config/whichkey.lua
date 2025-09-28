-- document existing key chains
require('which-key').add {
	-- Debugger
	{
		"<leader>d",
		group = "Debugger",
		nowait = true,
		remap = false,
	},
	{
		"<leader>dt",
		function()
			require("dap").toggle_breakpoint()
		end,
		desc = "Toggle Breakpoint",
		nowait = true,
		remap = false,
	},
	{
		"<leader>du",
		function()
			require("dapui").toggle()
		end,
		desc = "Toggle Breakpoint",
		nowait = true,
		remap = false,
	},
	{
		"<leader>dc",
		function()
			require("dap").continue()
		end,
		desc = "Continue",
		nowait = true,
		remap = false,
	},
	{
		"<leader>di",
		function()
			require("dap").step_into()
		end,
		desc = "Step Into",
		nowait = true,
		remap = false,
	},
	{
		"<leader>do",
		function()
			require("dap").step_over()
		end,
		desc = "Step Over",
		nowait = true,
		remap = false,
	},
	{
		"<leader>dy",
		function()
			require("dap").step_out()
		end,
		desc = "Step Out",
		nowait = true,
		remap = false,
	},
	{
		"<leader>dr",
		function()
			require("dap").repl.open()
		end,
		desc = "Open REPL",
		nowait = true,
		remap = false,
	},
	{
		"<leader>dl",
		function()
			require("dap").run_last()
		end,
		desc = "Run Last",
		nowait = true,
		remap = false,
	},
	{
		"<leader>dq",
		function()
			require("dap").terminate()
			require("dapui").close()
			require("nvim-dap-virtual-text").toggle()
		end,
		desc = "Terminate",
		nowait = true,
		remap = false,
	},
	{
		"<leader>db",
		function()
			require("telescope").extensions.dap.list_breakpoints()
		end,
		desc = "List Breakpoints",
		nowait = true,
		remap = false,
	},
	{
		"<leader>de",
		function()
			require("dap").set_exception_breakpoints({ "all" })
		end,
		desc = "Set Exception Breakpoints",
		nowait = true,
		remap = false,
	},

	-- Buffers
	{
		"<leader>f",
		function()
			vim.lsp.buf.format()
		end,
		desc = "Format",
		nowait = true,
		remap = false,
	},
	{
		"<leader>bn",
		"<cmd>bnext<CR>",
		desc = "Next buffer",
		nowait = true,
		remap = false,
	},
	{
		"<leader>bb",
		"<cmd>bprev<CR>",
		desc = "Previous buffer",
		nowait = true,
		remap = false,
	},
	{
		"<leader>bx",
		"<cmd>bd<CR>",
		desc = "Delete buffer",
		nowait = true,
		remap = false,
	},
	{
		"<leader>h",
		"<cmd>nohlsearch<CR>",
		desc = "Clear Highlights",
		nowait = true,
		remap = false,
	},
	{
		"<leader>e",
		"<cmd>Ex<CR>",
		desc = "Open Netrw",
		nowait = true,
		remap = false,
	},

}

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
