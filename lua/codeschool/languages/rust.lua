-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    rustSigil {base.CodeschoolOrange},
    rustEscape {base.CodeschoolAqua},
    rustStringContinuation {base.CodeschoolAqua},
    rustEnum {base.CodeschoolAqua},
    rustStructure {base.CodeschoolAqua},
    rustModPathSep {base.CodeschoolFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {base.CodeschoolAqua},
  }
end)

return M
