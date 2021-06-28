-- telescope highlights
local lush = require("lush")
local base = require("codeschool.base")

local telescope = lush(function()
	return {
    -- telescope.nvim
    TelescopeSelection {base.CodeschoolOrangeBold},
    TelescopeSlectionCaret {base.CodeschoolRed},
    TelescopeMultiSelection {base.CodeschoolGray},
    TelescopeNormal {base.CodeschoolFg1},
    TelescopeBorder {TelescopeNormal},
    TelescopePromptBorder {TelescopeNormal},
    TelescopeResultsBorder {TelescopeNormal},
    TelescopePreviewBorder {TelescopeNormal},
    TelescopeMatching {base.CodeschoolBlue},
    TelescopePromptPrefix {base.CodeschoolRed},
    TelescopePrompt {TelescopeNormal},
	}
end)

return telescope
