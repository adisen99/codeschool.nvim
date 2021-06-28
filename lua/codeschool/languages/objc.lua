-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {objcTypeModifier {base.CodeschoolRed}, objcDirective {base.CodeschoolBlue}}
end)

return M
