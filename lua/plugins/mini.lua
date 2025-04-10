return {
    {
        'echasnovski/mini.nvim',
        version = false,
        config = function()
            require('mini.ai').setup()
            require('mini.statusline').setup()
            require('mini.pairs').setup()
        end,
    }
}
