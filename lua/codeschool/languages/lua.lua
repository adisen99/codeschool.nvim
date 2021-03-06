-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    luaIn {base.CodeschoolRed},
    luaFunction {base.CodeschoolAqua},
    luaTable {base.CodeschoolOrange},
  }
end)

return M
