-- [[ Basic Keymaps ]]
vim.g.mapleader = ' '

-- Custom keymaps
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format" })
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext, { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bb", vim.cmd.bprev, { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bx", vim.cmd.bd, { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>h", vim.cmd.nohlsearch, { desc = "Clear Highlights" })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
