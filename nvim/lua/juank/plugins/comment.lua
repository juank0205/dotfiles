return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        require('Comment').setup({
            toggler = {
                ---Line-comment toggle keymap
                line = '<leader>/',
                ---Block-comment toggle keymap
                block = '<leader>*',
            },
            opleader = {
                ---Line-comment toggle keymap
                line = '<leader>/',
                ---Block-comment toggle keymap
                block = '<leader>*',
            },
        })
    end
}
