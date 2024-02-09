return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim', "BurntSushi/ripgrep" },
      config = function()
      	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>tf', builtin.find_files, {desc = "Find Files"})
	vim.keymap.set('n', '<leader>tg', builtin.live_grep, {desc = "Live Grep"})
	vim.keymap.set('n', '<leader>tF', builtin.git_files, {desc = "Find Git Files"})
      end
    }
