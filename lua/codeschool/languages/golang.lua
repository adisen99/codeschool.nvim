-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

-- golang
M = lush(function()
  return {
    goDirective {base.CodeschoolAqua},
    goConstants {base.CodeschoolPurple},
    goDeclaration {base.CodeschoolRed},
    goDeclType {base.CodeschoolBlue},
    goBuiltins {base.CodeschoolOrange},
  }
end)

return M
