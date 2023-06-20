-- treesitter highlights
local lush = require("lush")
local base = require("codeschool.base")
local styles = require("codeschool.settings").styles
local colors = require("codeschool.colors")
local table_concat = table.concat

local M = {}

M = lush(function()
  return {
    -- nvim-treesitter
    ["@none"] = { bg = "none", fg = "none" },
    ["@error"] = { fg = base.CodeschooError },
    ["@title"] = { fg = base.Title },
    ["@literal"] = { fg = base.String },
    ["@uri"] = { fg = base.Underlined },
    ["@variable"] = vim.tbl_extend("force", { fg = base.CodeschoolFg1 }),
    ["@variable.builtin"] = { fg = base.CodeschoolFg1 },
    ["@punctuation.delimiter"] = { fg = base.Delimiter },
    ["@punctuation.bracket"] = { fg = base.Delimiter },
    ["@punctuation.special"] = { fg = base.Delimiter },
    ["@constant"] = { fg = base.Constant },
    ["@constant.builtin"] = { fg = base.Special },
    ["@const.macro"] = { fg = base.Define },
    ["@string"] = { fg = base.String },
    ["@string.regex"] = { fg = base.String },
    ["@string.escape"] = { fg = base.SpecialChar },
    ["@character"] = { fg = base.Character },
    ["@number"] = { fg = base.Number },
    ["@boolean"] = { fg = base.Boolean },
    ["@float"] = { fg = base.Float },
    ["@function"] = { fg = base.Function },
    ["@function.builtin"] = { fg = base.Special },
    ["@func.macro"] = { fg = base.Macro },
    ["@parameter"] = { fg = base.Identifier },
    ["@parameter.reference"] = { fg = base.Parameter },
    ["@method"] = { fg = base.Function },
    ["@field"] = { fg = base.Identifier },
    ["@property"] = { fg = base.Identifier },
    ["@constructer"] = { fg = base.Special },
    ["@annotation"] = { fg = base.PreProc },
    ["@attribute"] = { fg = base.PreProc },
    ["@namespace"] = { fg = base.Include },
    ["@conditional"] = { fg = base.Conditional },
    ["@repeat"] = { fg = base.Repeat },
    ["@label"] = { fg = base.Label },
    ["@operator"] = { fg = base.Operator },
    ["@keyword"] = { fg = base.Keyword },
    ["@keyword.function"] = { fg = base.Keyword },
    ["@keyword.operator"] = { fg = base.Operator },
    ["@exception"] = { fg = base.Exception },
    ["@type"] = { fg = base.Type },
    ["@type.builtin"] = { fg = base.Type },
    ["@Include"] = { fg = base.Include },
    ["@text"] = { fg = "none", bg = "none" },
    ["@strong"] = { gui = styles.bold },
    ["@emphasis"] = { gui = styles.italic_strings },
    ["@underline"] = { gui = styles.underline },
    ["@comment"] = { fg = base.Comment },
    ["@structure"] = { fg = base.CodeschoolOrange },
    ["@tag"] = { fg = base.CodeschoolOrange },
    ["@tag.delimiter"] = { fg = base.CodeschoolGreen },
    ["@note"] = { fg = base.Todo },
    ["@warning"] = { fg = colors.bright_yellow, gui = table_concat({ styles.bold, styles.italic_comments }, ",") },
    ["@danger"] = { fg = colors.bright_red, gui = table_concat({ styles.bold, styles.italic_comments }, ",") }
  }
end)

return M
