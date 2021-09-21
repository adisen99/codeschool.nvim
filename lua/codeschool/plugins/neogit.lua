-- buftabline highlights
local lush = require("lush")
local base = require('codeschool.base')
local colors = require('codeschool.colors')

local M = {}

M = lush(function()
	return {
    -- Neogit
  NeogitNotificationInfo {base.CodeschoolGreen},
  NeogitNotificationWarning {base.CodeschoolYellow},
  NeogitNotificationError {fg = colors.faded_red},

  NeogitDiffAddHighlight {base.CodeschoolGreenSign},
  NeogitDiffDeleteHighlight {base.CodeschoolRedSign},
  NeogitDiffContextHighlight {base.CodeschoolFg3},
  NeogitHunkHeader {base.CodeschoolFg1},
  NeogitHunkHeaderHighlight {base.CodeschoolFg1},
	}
end)

return M
