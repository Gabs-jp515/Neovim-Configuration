require("core.keymaps")
require("core.options")

--require("settings.theme")

require("core.lazy")
--require("core.plugins.tokyonight")
--require("core.plugins.themery")

local theme = require("utils.col-scheme")
print(theme.get_current_theme())

require("settings.theme")
