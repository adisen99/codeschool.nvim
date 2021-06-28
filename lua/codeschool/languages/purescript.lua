-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
  return {
    purescriptModuleKeyword {base.CodeschoolAqua},
    purescriptModuleName {base.CodeschoolFg1},
    purescriptWhere {base.CodeschoolAqua},
    purescriptDelimiter {base.CodeschoolFg4},
    purescriptType {base.CodeschoolFg1},
    purescriptImportKeyword {base.CodeschoolAqua},
    purescriptHidingKeyword {base.CodeschoolAqua},
    purescriptAsKeyword {base.CodeschoolAqua},
    purescriptStructure {base.CodeschoolAqua},
    purescriptOperator {base.CodeschoolBlue},
    purescriptTypeVar {base.CodeschoolFg1},
    purescriptConstructor {base.CodeschoolFg1},
    purescriptFunction {base.CodeschoolFg1},
    purescriptConditional {base.CodeschoolOrange},
    purescriptBacktick {base.CodeschoolOrange},
  }
end)

return M
