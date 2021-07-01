-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")
local styles = require("codeschool.settings").styles

local M = {}

M = lush(function()
  return {
    markdownItalic {fg = base.CodeschoolFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {base.CodeschoolAquaBold},
    markdownH2 {base.CodeschoolRedBold},
    markdownH3 {base.CodeschoolPurpleBold},
    markdownH4 {markdownH3},
    --[[ markdownH5 {base.CodeschoolYellow},
    markdownH6 {markdownH5}, ]]
    markdownCode {base.CodeschoolGreen},
    markdownCodeBlock {base.CodeschoolGreen},
    markdownCodeDelimiter {base.CodeschoolGreen},
    markdownBlockquote {base.CodeschoolGray},
    markdownListMarker {base.CodeschoolGray},
    markdownOrderedListMarker {base.CodeschoolGray},
    markdownRule {base.CodeschoolGray},
    markdownHeadingRule {base.CodeschoolGray},
    markdownUrlDelimiter {base.CodeschoolFg3},
    markdownLinkDelimiter {base.CodeschoolFg3},
    markdownLinkTextDelimiter {base.CodeschoolFg3},
    markdownHeadingDelimiter {base.CodeschoolOrange},
    markdownUrl {base.CodeschoolPurple},
    markdownUrlTitleDelimiter {base.CodeschoolAqua},
    markdownLinkText {fg = base.CodeschoolGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
  }
end)

return M
