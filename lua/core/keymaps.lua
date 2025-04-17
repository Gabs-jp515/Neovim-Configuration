--Leader Key
vim.g.mapleader = " "

--Explorer
vim.keymap.set('n', '<leader>pv', function() vim.cmd.w(); vim.cmd.Ex() end)

--Themery
vim.keymap.set('n', '<leader>cs', vim.cmd.Themery)

--Window
vim.keymap.set('n', '<leader>k', vim.cmd.close)
vim.keymap.set('n', '<leader>vs', vim.cmd.vs)
vim.keymap.set('n', '<leader>hs', vim.cmd.split)
vim.keymap.set('n', '<leader>vf', function() 
    local file = vim.fn.input("Insert filename: ")
    vim.cmd(string.format("vsplit %s", file))
end)
vim.keymap.set('n', '<leader>hf', function() 
    local file = vim.fn.input("Insert filename: ")
    vim.cmd(string.format("split %s", file))
end)

--Word Finding
vim.keymap.set('n', '<leader>fw', function() 
    --local word  

end)
