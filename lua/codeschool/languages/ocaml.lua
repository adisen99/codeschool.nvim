-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    ocamlOperator {base.CodeschoolFg1},
    ocamlKeyChar {base.CodeschoolOrange},
    ocamlArrow {base.CodeschoolOrange},
    ocamlInfixOpKeyword {base.CodeschoolRed},
    ocamlConstructor {base.CodeschoolOrange},
  }
end)

return M
