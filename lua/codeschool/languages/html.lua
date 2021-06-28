-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")
local styles = require("codeschool.settings").styles
local table_concat = table.concat

local html = lush(function()
  return {
    htmlTag {base.CodeschoolAquaBold},
    htmlEndTag {base.CodeschoolAquaBold},
    htmlTagName {base.CodeschoolBlue},
    htmlArg {base.CodeschoolOrange},
    htmlScriptTag {base.CodeschoolPurple},
    htmlTagN {base.CodeschoolFg1},
    htmlSpecialTagName {base.CodeschoolBlue},
    htmlSpecialChar {base.CodeschoolRed},
    htmlLink {fg = base.CodeschoolFg4.fg.hex, gui = styles.underline},
    htmlBold {fg = base.CodeschoolFg1.fg.hex, gui = styles.bold},
    htmlBoldUnderline {
      fg = base.CodeschoolFg1.fg.hex,
      gui = table_concat({styles.bold, styles.underline}, ","),
    },
    htmlBoldItalic {
      fg = base.CodeschoolFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlBoldUnderlineItalic {
      fg = base.CodeschoolFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlItalic {fg = base.CodeschoolFg1.fg.hex, gui = styles.italic_strings},
  }
end)

return html
