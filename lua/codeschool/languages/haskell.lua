-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local haskell = lush(function()
  return {
    haskellType {base.CodeschoolBlue},
    haskellIdentifier {base.CodeschoolAqua},
    haskellSeparator {base.CodeschoolFg4},
    haskellDelimiter {base.CodeschoolOrange},
    haskellOperators {base.CodeschoolPurple},
    haskellBacktick {base.CodeschoolOrange},
    haskellStatement {base.CodeschoolPurple},
    haskellConditional {base.CodeschoolPurple},
    haskellLet {base.CodeschoolRed},
    haskellDefault {base.CodeschoolRed},
    haskellWhere {base.CodeschoolRed},
    haskellBottom {base.CodeschoolRedBold},
    haskellImportKeywords {base.CodeschoolPurpleBold},
    haskellDeclKeyword {base.CodeschoolOrange},
    haskellDecl {base.CodeschoolOrange},
    haskellDeriving {base.CodeschoolPurple},
    haskellAssocType {base.CodeschoolAqua},
    haskellNumber {base.CodeschoolAqua},
    haskellPragma {base.CodeschoolRedBold},
    haskellTH {base.CodeschoolAquaBold},
    haskellForeignKeywords {base.CodeschoolGreen},
    haskellKeyword {base.CodeschoolRed},
    haskellFloat {base.CodeschoolAqua},
    haskellInfix {base.CodeschoolPurple},
    haskellQuote {base.CodeschoolGreenBold},
    haskellShebang {base.CodeschoolYellowBold},
    haskellLiquid {base.CodeschoolPurpleBold},
    haskellQuasiQuoted {base.CodeschoolBlueBold},
    haskellRecursiveDo {base.CodeschoolPurple},
    haskellQuotedType {base.CodeschoolRed},
    haskellPreProc {base.CodeschoolFg4},
    haskellTypeRoles {base.CodeschoolRedBold},
    haskellTypeForall {base.CodeschoolRed},
    haskellPatternKeyword {base.CodeschoolBlue},
  }
end)

return haskell
