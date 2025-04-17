-- settings/theme.lua

local theme = require("utils.col-scheme")

-- Set your preferred colorscheme
vim.cmd.colorscheme(theme.get_current_theme())  -- or "tokyonight", "gruvbox", etc.

-- Make background transparent
local transparent_groups = {
  "Normal",
  "NormalFloat",
  "FloatBorder",
  "SignColumn",
  "VertSplit",
  "NvimTreeNormal",       -- if you're using nvim-tree
  "TelescopeNormal",      -- Telescope UI
  "TelescopeBorder",      -- Telescope border
}

for _, group in ipairs(transparent_groups) do
  vim.api.nvim_set_hl(0, group, { bg = "none" })
end

-- Ensure transparency is applied after every colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    for _, group in ipairs(transparent_groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
  end,
})

