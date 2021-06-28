-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local objc = lush(function()
  return {objcTypeModifier {base.CodeschoolRed}, objcDirective {base.CodeschoolBlue}}
end)

return objc
