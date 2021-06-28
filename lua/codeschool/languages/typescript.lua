-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    typescriptReserved {base.CodeschoolAqua},
    typescriptLabel {base.CodeschoolAqua},
    typescriptFuncKeyword {base.CodeschoolAqua},
    typescriptIdentifier {base.CodeschoolOrange},
    typescriptBraces {base.CodeschoolOrange},
    typescriptEndColons {base.CodeschoolFg1},
    typescriptDOMObjects {base.CodeschoolFg1},
    typescriptAjaxMethods {base.CodeschoolFg1},
    typescriptLogicSymbols {base.CodeschoolOrange},
    typescriptDocSeeTag {base.Comment},
    typescriptDocParam {base.Comment},
    typescriptDocTags {base.Comment},
    typescriptGlobalObjects {base.CodeschoolFg1},
    typescriptParens {base.CodeschoolOrange},
    typescriptOpSymbols {base.CodeschoolOrange},
    typescriptHtmlElemProperties {base.CodeschoolFg1},
    typescriptNull {base.CodeschoolPurple},
    typescriptInterpolationDelimiter {base.CodeschoolAqua},
    typescriptArrowFunc {base.CodeschoolFg1},
    typescriptCharacter {base.CodeschoolOrange},
    typescriptUnion {base.CodeschoolOrange},
    typescriptDotNotation {base.CodeschoolOrange},
    typescriptGlobalObjectDot {typescriptDotNotation},
  }
end)

return M
