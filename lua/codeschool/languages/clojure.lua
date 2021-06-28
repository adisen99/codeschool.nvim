-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")
local styles = require("codeschool.settings").styles

local M = {}

M = lush(function()
  return {
    clojureKeyword {base.CodeschoolBlue},
    clojureCond {base.CodeschoolOrange},
    clojureSpecial {base.CodeschoolOrange},
    clojureDefine {base.CodeschoolOrange},
    clojureFunc {base.CodeschoolYellow},
    clojureRepeat {base.CodeschoolYellow},
    clojureCharacter {base.CodeschoolAqua},
    clojureStringEscape {base.CodeschoolAqua},
    clojureException {base.CodeschoolRed},
    clojureRegexp {base.CodeschoolAqua},
    clojureRegexpEscape {base.CodeschoolAqua},
    clojureParen {base.CodeschoolFg3},
    clojureAnonArg {base.CodeschoolYellow},
    clojureVariable {base.CodeschoolBlue},
    clojureMacro {base.CodeschoolOrange},
    clojureMeta {base.CodeschoolYellow},
    clojureDeref {base.CodeschoolYellow},
    clojureQuote {base.CodeschoolYellow},
    clojureUnquote {base.CodeschoolYellow},
    clojureRegexpCharClass {fg = base.CodeschoolFg3.fg.hex, gui = styles.bold},
    clojureRegexpMod {clojureRegexpCharClass},
    clojureRegexpQuantifier {clojureRegexpCharClass},
  }
end)

return M
