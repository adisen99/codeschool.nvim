-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")

local viml = lush(function()
  return {
    vimNotation {base.CodeschoolOrange},
    vimBracket {base.CodeschoolOrange},
    vimMapModKey {base.CodeschoolOrange},
    vimFuncSID {base.CodeschoolFg3},
    vimSetSep {base.CodeschoolFg3},
    vimSep {base.CodeschoolFg3},
    vimContinue {base.CodeschoolFg3},
  }
end)

return viml
