vim.keymap.set('n', 'q', function() 
    local modified = vim.bo.modified
    
    if not modified then
        vim.cmd('q')

    elseif modified then
        local choice = vim.fn.input("Do you want to to save changes (y/n): ")
    
        if choice == y then
            vim.cmd("write")
            vim.cmd("quit")
        
        elseif choice == n then
            vim.cmd("quit!")
        else
           print("") 
        end
    end
end, { desc = "Smart Close" })
