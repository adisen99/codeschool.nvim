-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    jsxTagName {base.CodeschoolAqua},
    jsxComponentName {base.CodeschoolGreen},
    jsxCloseString {base.CodeschoolFg4},
    jsxAttrib {base.CodeschoolYellow},
    jsxEqual {base.CodeschoolAqua},
  }
end)

return M
