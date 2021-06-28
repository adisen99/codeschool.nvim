-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    jsonKeyword {base.CodeschoolGreen},
    jsonQuote {base.CodeschoolGreen},
    jsonBraces {base.CodeschoolFg1},
    jsonString {base.CodeschoolFg1},
  }
end)

return M
