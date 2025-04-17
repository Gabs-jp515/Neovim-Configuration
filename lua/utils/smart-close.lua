vim.keymap.set('n', 'q', function() 
    local modified = vim.bo.modified
    
    if not modified then
        vim.cmd('q')

    else
        local choice = vim.fn.input("Do you wanto to save changes (y/n): ")
    
        if choice == y then
            vim.cmd("wq")
        
        elseif choice == n then
            vim.cmd("q!")
        else
           print("") 
        end
    end
end, { desc = "Smart Close" }
