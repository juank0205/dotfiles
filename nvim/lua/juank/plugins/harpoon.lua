return {
  "ThePrimeagen/harpoon",
  lazy = false,
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", function() mark.add_file() end)
    vim.keymap.set("n", "<leader>A", function() mark.rm_file() end)
    vim.keymap.set("n", "<leader>B", function() ui.toggle_quick_menu() end)

    vim.keymap.set("n", "<leader>j", function() ui.nav_next() end)
    vim.keymap.set("n", "<leader>k", function() ui.nav_prev() end)
  end
}
