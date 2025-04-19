--Leader Key
vim.g.mapleader = " "

--Lazy
vim.keymap.set('n', '<leader>l', vim.cmd.Lazy)

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

--Word Management
--[[vim.keymap.set('n', '<leader>fw', function() 
	local word = vim.fn.input("Grep Word > ")
	vim.cmd(string.format("/\\<%s\\>", word))
end)
vim.keymap.set('n', '<leader>f', function() 
	local word = vim.fn.input("Grep > ")
	vim.cmd(string.format("/%s", word))
end)]]
vim.keymap.set('n', '<leader>dw', 'diw', { silent = true, noremap = true })

local comment_strings = {
	python = "#",
	lua    = "--",
	javascript = "//",
	typescript = "//",
	c      = "//",
	html   = "<!--",
	css    = "/*",
	ruby   = "#",
	rust   = "//",
}
function ToggleComment()
	local comment = comment_strings[vim.bo.filetype]
	if not comment then print("No comment string for this filetype") return end

	local mode = vim.api.nvim_get_mode().mode

	if mode == 'v' or mode == 'V' then
		-- Get visual range
		local _, ls, cs = unpack(vim.fn.getpos("'<"))
		local _, le, ce = unpack(vim.fn.getpos("'>"))
		for line = ls, le do
			local content = vim.fn.getline(line)
			if content:find(vim.pesc(comment)) then
				vim.fn.setline(line, content:gsub(vim.pesc(comment) .. "%s?", "", 1))
			else
				vim.fn.setline(line, comment .. " " .. content)
			end
		end
		vim.cmd("normal! gv")  -- reselect visual block
	else
		local line = vim.fn.getline(".")
		if line:find(vim.pesc(comment)) then
			vim.fn.setline(".", line:gsub(vim.pesc(comment) .. "%s?", "", 1))
		else
			vim.fn.setline(".", comment .. " " .. line)
		end
	end
end
vim.keymap.set('n', '<leader>c', ToggleComment, { desc = "Toggle comment" })
vim.keymap.set('v', '<leader>c', ToggleComment, { desc = "Toggle comment" })

local function replace()
    local replacer = vim.fn.input("Word to replace with > ") 
    local replacee = vim.fn.input("Word to replace > ")
    local line_num = vim.fn.line(".")
    vim.cmd(string.format("%ss/\\(.*\\)\\zs%s/%s/", line_num, replacee, replacer))
end
vim.keymap.set('n', '<leader>r', replace, { desc = "Replace current word" })

local function replace_word()
    local replacer = vim.fn.input("Word to replace with > ") 
    local word = vim.fn.expand("<cword>") 
    vim.cmd(string.format("s/%s/%s/", word, replacer))
end
vim.keymap.set('n', '<leader>rw', replace_word, { desc = "Replace current word under cursor" })

local function replace_all_in_line()
    local mode = vim.fn.mode()
    local replacee = vim.fn.expand("<cword>")
    local replacer = vim.fn.input("Word to replace with > ")
    vim.api.nvim_feedkeys("V", "n", false)
    vim.cmd(string.format("s/%s/%s/g", replacee, replacer))
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "V", false)
end

vim.keymap.set('n', '<leader>rl', replace_all_in_line, { desc = "Replace all occurrences of word under cursor in line" })


--GitGutter
function ToggleGitGutter()  
	local is_enabled = vim.b.gitgutter_enabled == 1
	if is_enabled then
		vim.cmd("GitGutterDisable")
		print("GitGutter now disabled")
	else 
		vim.cmd("GitGutterEnable")
		print("GitGutter now enabled")
	end
end

vim.keymap.set('n', '<leader>gl', vim.cmd.GitGutterEnable)

--Neogit
vim.keymap.set('n', '<leader>gr', vim.cmd.Neogit)

--Harpoon

--[[local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>ha', mark.add_file)
vim.keymap.set('n', '<leader>hm', ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>h1', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>h2', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>h3', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>h4', function() ui.nav_file(4) end)
vim.keymap.set('n', '<leader>h5', function() ui.nav_file(5) end)]]


--See plugins/harpoon.lua file


--Telescope
--See plugins/telescope.lua
