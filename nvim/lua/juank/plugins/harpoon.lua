return {
  "ThePrimeagen/harpoon",
  lazy = false,
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", function() mark.add_file() end, { remap = false, desc = "Add harpoon" })
    vim.keymap.set("n", "<leader>A", function() mark.rm_file() end, { remap = false, desc = "Remove harpoon" })
    vim.keymap.set("n", "<leader>B", function() ui.toggle_quick_menu() end, { remap = false, desc = "Edit harpoon" })

    vim.keymap.set("n", "<leader>j", function() ui.nav_next() end, { remap = false, desc = "Next harpoon" })
    vim.keymap.set("n", "<leader>k", function() ui.nav_prev() end, { remap = false, desc = "Previous harpoon" })
  end
}
