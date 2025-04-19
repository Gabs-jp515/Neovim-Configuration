return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    --Already have it dependencies = { 'nvim-lua/plenary.nvim' }
    lazy = false,
    config = function() 
        local tel = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', tel.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fw', tel.live_grep, { desc = 'Telesecope live grep' })
        vim.keymap.set('n', '<leader>fb', tel.buffers, { desc = 'Telesecope buffers' })
        vim.keymap.set('n', '<leader>tf', tel.help_tags, { desc = 'Telescope  help_tags' })
    end,
}
