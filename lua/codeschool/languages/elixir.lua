-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local elixir = lush(function()
  return {
    elixirDocString {base.Comment},
    elixirStringDelimiter {base.CodeschoolGreen},
    elixirInterpolationDelimiter {base.CodeschoolAqua},
    elixirModuleDeclaration {base.CodeschoolYellow},
  }
end)

return elixir
