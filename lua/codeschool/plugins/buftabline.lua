-- buftabline highlights
local lush = require("lush")
local base = require("codeschool.base")

local buftabline = lush(function()
	return {
    -- vim-buftabline
    BufTabLineCurrent {base.TabLineSel},
    BufTabLineActive {base.PmenuSel},
    BufTabLineHidden {base.TabLine},
    BufTabLineFill {base.TabLineFill},
    BufTabLineModifiedCurrent {BufTabLineCurrent},
    BufTabLineModifiedActive {BufTabLineActive},
    BufTabLineModifiedHidden {BufTabLineHidden},
	}
end)

return buftabline
