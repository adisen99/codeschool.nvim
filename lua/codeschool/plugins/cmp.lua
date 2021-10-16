-- nvim-cmp highlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
	return {
    -- nvim-cmp
    CmpItemKind {base.CodeschoolYellow},
    CmpItemAbbrMatch {base.CodeschoolFg1},
    CmpItemAbbr {base.CodeschoolFg4},
    CmpItemMenu {base.CodeschoolAqua}
	}
end)

return M
