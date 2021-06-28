-- fzf highlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
	return {
    -- fzf.vim
    Fzf1 {fg = base.CodeschoolBlue.fg.hex, bg = base.CodeschoolBg1.fg.hex},
    Fzf2 {fg = base.CodeschoolOrange.fg.hex, bg = base.CodeschoolBg1.fg.hex},
    Fzf3 {fg = base.CodeschoolFg4.fg.hex, bg = base.CodeschoolBg1.fg.hex},
    ShowMarksHLl {base.CodeschoolBlueSign},
    ShowMarksHLu {base.CodeschoolBlueSign},
    ShowMarksHLo {base.CodeschoolBlueSign},
    ShowMarksHLm {base.CodeschoolBlueSign},
	}
end)

return M
