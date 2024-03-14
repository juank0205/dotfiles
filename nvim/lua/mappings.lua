require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", '<leader>-', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown{
    winblend = 10,
    previewer = false,
  })
end, { desc = 'Search in current buffer'})
map("n", "<leader>f", function() vim.lsp.buf.format() end, { remap = false, desc = "Format" })
map("n", "<leader>bn", vim.cmd.bnext, { remap = false, desc = "Next buffer" })
map("n", "<leader>bb", vim.cmd.bprev, { remap = false, desc = "Previous buffer" })
map("n", "<leader>bd", vim.cmd.bd, { remap = false, desc = "Delete buffer" })
map("n", "<leader>h", vim.cmd.nohlsearch, { remap = false, desc = "Clear Highlights" })
map({ "n" }, "<leader>Fl", ":vnew | buffer FLUTTER_DEV_LOG<CR>", { remap = false, desc = "Open flutter dev log in vertical split" })
map("n", "<leader>Fr", vim.cmd.FlutterRun, { remap = false, desc = "FlutterRun" })
map("n", "<leader>Fq", vim.cmd.FlutterQuit, { remap = false, desc = "FlutterQuit" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
