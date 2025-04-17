local opt = vim.opt  -- for conciseness

-- UI
opt.number = true             -- Show line numbers
opt.relativenumber = true     -- Show relative line numbers
opt.cursorline = true         -- Highlight current line
opt.termguicolors = true      -- Enable true color support
opt.signcolumn = "yes"        -- Always show sign column
opt.scrolloff = 19             -- Keep 8 lines visible above/below cursor
opt.wrap = false              -- Don't wrap long lines

-- Tabs & Indentation
opt.expandtab = true          -- Convert tabs to spaces
opt.tabstop = 4               -- Number of spaces for a tab
opt.shiftwidth = 4            -- Indent by 4 spaces
opt.softtabstop = 4           -- Backspace feels natural
opt.smartindent = true        -- Smart autoindenting on new lines

-- Search
opt.ignorecase = true         -- Case-insensitive search...
opt.smartcase = true          -- ...unless you use capital letters
opt.incsearch = true          -- Show match while typing
opt.hlsearch = true          -- Don't highlight all matches after search if set false

-- Files
opt.undofile = true           -- Save undo history
opt.swapfile = false          -- No swap file
opt.backup = false            -- No backup file

-- Performance
opt.updatetime = 300          -- Faster completion
opt.timeoutlen = 700          -- Shorter time for mapped sequence to complete

-- Clipboard
opt.clipboard = "unnamedplus" -- Use system clipboard by default

-- Split behavior
opt.splitright = true         -- Vertical splits to the right
opt.splitbelow = true         -- Horizontal splits below

-- Misc
opt.mouse = "a"               -- Enable mouse support
opt.hidden = true             -- Keep buffers hidden when not displayed
opt.completeopt = { "menuone", "noselect" }  -- Better completion experience

