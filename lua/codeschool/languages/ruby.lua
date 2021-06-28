-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local ruby = lush(function()
  return {
    rubyStringDelimiter {base.CodeschoolGreen},
    rubyInterpolationDelimiter {base.CodeschoolAqua},
  }
end)

return ruby
