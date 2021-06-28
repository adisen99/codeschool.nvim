-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local moonscript = lush(function()
  return {
    moonSpecialOp {base.CodeschoolFg3},
    moonExtendedOp {base.CodeschoolFg3},
    moonFunction {base.CodeschoolFg3},
    moonObject {base.CodeschoolYellow},
  }
end)

return moonscript
