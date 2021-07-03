-- treesitter highlights
local lush = require("lush")
local base = require("codeschool.base")
local styles = require("codeschool.settings").styles

local M = {}

M = lush(function()
	return {
    -- nvim-treesitter
    TSNone {},
    TSError {base.CodeschoolError},
    TSTitle {base.Title},
    TSLiteral {base.String},
    TSURI {base.Underlined},
    TSVariable {base.CodeschoolFg1},
    TSPunctDelimiter {base.Delimiter},
    TSPunctBracket {base.Delimiter},
    TSPunctSpecial {base.Delimiter},
    TSConstant {base.Constant},
    TSConstBuiltin {base.Special},
    TSConstMacro {base.Define},
    TSString {base.String},
    TSStringRegex {base.String},
    TSStringEscape {base.SpecialChar},
    TSCharacter {base.Character},
    TSNumber {base.Number},
    TSBoolean {base.Boolean},
    TSFloat {base.Float},
    TSFunction {base.Function},
    TSFuncBuiltin {base.Special},
    TSFuncMacro {base.Macro},
    TSParameter {base.Identifier},
    TSParameterReference {TSParameter},
    TSMethod {base.Function},
    TSField {base.Identifier},
    TSProperty {base.Identifier},
    TSConstructor {base.Special},
    TSAnnotation {base.PreProc},
    TSAttribute {base.PreProc},
    TSNamespace {base.Include},
    TSConditional {base.Conditional},
    TSRepeat {base.Repeat},
    TSLabel {base.Label},
    TSOperator {base.Operator},
    TSKeyword {base.Keyword},
    TSKeywordFunction {base.Keyword},
    TSKeywordOperator {TSOperator},
    TSException {base.Exception},
    TSType {base.Type},
    TSTypeBuiltin {base.Type},
    TSInclude {base.Include},
    TSVariableBuiltin {base.Special},
    TSText {TSNone},
    TSStrong {gui = styles.bold},
    TSEmphasis {gui = styles.italic_strings},
    TSUnderline {gui = styles.underline},
    TSComment {base.Comment},
    TSStructure {base.CodeschoolOrange},
    TSTag {base.CodeschoolOrange},
    TSTagDelimiter {base.CodeschoolGreen},
    TSNote {base.Todo}
	}
end)

return M
