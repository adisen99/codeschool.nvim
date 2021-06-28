-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    scalaNameDefinition {base.CodeschoolFg1},
    scalaCaseFollowing {base.CodeschoolFg1},
    scalaCapitalWord {base.CodeschoolFg1},
    scalaTypeExtension {base.CodeschoolFg1},
    scalaKeyword {base.CodeschoolRed},
    scalaKeywordModifier {base.CodeschoolRed},
    scalaSpecial {base.CodeschoolAqua},
    scalaOperator {base.CodeschoolFg1},
    scalaTypeDeclaration {base.CodeschoolYellow},
    scalaTypeTypePostDeclaration {base.CodeschoolYellow},
    scalaInstanceDeclaration {base.CodeschoolFg1},
    scalaInterpolation {base.CodeschoolAqua},
  }
end)

return M
