-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    rubyStringDelimiter {base.CodeschoolGreen},
    rubyInterpolationDelimiter {base.CodeschoolAqua},
  }
end)

return M
