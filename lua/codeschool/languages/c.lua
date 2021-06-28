-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    cOperator {base.CodeschoolPurple},
    cppOperator {base.CodeschoolPurple},
    cStructure {base.CodeschoolOrange},

  }
end)

return M
