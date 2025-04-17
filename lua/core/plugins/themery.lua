return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            themes = {'gruvbox', 'blue', 'darkblue', 'default', 'delek', 'desert', 'elflord', 'evening', 'habamax', 'industry', 'koehler', 'lunap erche', 'morning', 'murphy', 'pablo', 'peachpuff', 'quiet', 'retrobox', 'ron', 'shine', 'slate', 'sorbet', 'tokyonight', 'tokyonight-day', 'tokyonight-moon', 'tokyonight-night', 'tokyonight-storm', 'torte', 'unokai', 'vim', 'wildcharm', 'zaibatsu', 'zellner'},
            livePreviwe = true,
        })
    end
}
