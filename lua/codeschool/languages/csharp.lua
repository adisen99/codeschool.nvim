-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    csBraces {base.CodeschoolFg1},
    csEndColon {base.CodeschoolFg1},
    csLogicSymbols {base.CodeschoolFg1},
    csParens {base.CodeschoolFg3},
    csOpSymbols {base.CodeschoolFg3},
    csInterpolationDelimiter {base.CodeschoolFg3},
    csInterpolationAlignDel {base.CodeschoolAquaBold},
    csInterpolationFormat {base.CodeschoolAqua},
    csInterpolationFormatDel {base.CodeschoolAquaBold},
  }
end)

return M
