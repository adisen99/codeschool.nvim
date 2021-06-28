-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local coffeescript = lush(function()
  return {
    coffeeExtendedOp {base.CodeschoolFg3},
    coffeeSpecialOp {base.CodeschoolFg3},
    coffeeCurly {base.CodeschoolOrange},
    coffeeParen {base.CodeschoolFg3},
    coffeeBracket {base.CodeschoolOrange},
  }
end)

return coffeescript
