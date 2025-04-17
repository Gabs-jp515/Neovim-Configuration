--Leader Key
vim.g.mapleader = " "

--Explorer
vim.keymap.set('n', '<leader>pv', function() vim.cmd.w(); vim.cmd.Ex() end)

--Themery
vim.keymap.set('n', '<leader>cs', vim.cmd.Themery)
