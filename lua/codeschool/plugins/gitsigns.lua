-- gitsigns highlights
local lush = require("lush")
local base = require("codeschool.base")

local gitsigns = lush(function()
	return {
    -- gitsigns.nvim
    GitSignsAdd {base.CodeschoolGreenSign},
    GitSignsChange {base.CodeschoolBlueSign},
    GitSignsDelete {base.CodeschoolRedSign},
    -- GitSignsCurrentLineBlame {base.NonText},
	}
end)

return gitsigns
