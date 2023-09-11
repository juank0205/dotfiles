return {
    'akinsho/bufferline.nvim',
    version = "*",
    lazy = false,
    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline")
        bufferline.setup {
            options = {
                style_preset = bufferline.style_preset.minimal,
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or ""
                    return " " .. icon .. count
                end
            }
        }
    end
}
