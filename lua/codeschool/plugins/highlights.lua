-- 3rd party plugins highlights
local lush = require("lush")
local base = require("codeschool.base")
local colors = require("codeschool.colors")
local styles = require("codeschool.settings").styles
local utils = require("codeschool.utils")
local user_plugins = require("codeschool.settings").user_plugins

local netrw = lush(function()
  return {
    -- netrw
    netrwDir {base.CodeschoolAqua},
    netrwClassify {base.CodeschoolAqua},
    netrwLink {base.CodeschoolGray},
    netrwSymLink {base.CodeschoolFg1},
    netrwExe {base.CodeschoolYellow},
    netrwComment {base.CodeschoolGray},
    netrwList {base.CodeschoolBlue},
    netrwHelpCmd {base.CodeschoolAqua},
    netrwCmdSep {base.CodeschoolFg3},
    netrwVersion {base.CodeschoolGreen},
	}
end)

local treesitter = lush(function()
	return {
    -- nvim-treesitter
    TSNone {},
    TSError {base.Error},
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
	}
end)

local telescope = lush(function()
	return {
    -- telescope.nvim
    TelescopeSelection {base.CodeschoolOrangeBold},
    TelescopeSlectionCaret {base.CodeschoolRed},
    TelescopeMultiSelection {base.CodeschoolGray},
    TelescopeNormal {base.CodeschoolFg1},
    TelescopeBorder {TelescopeNormal},
    TelescopePromptBorder {TelescopeNormal},
    TelescopeResultsBorder {TelescopeNormal},
    TelescopePreviewBorder {TelescopeNormal},
    TelescopeMatching {base.CodeschoolBlue},
    TelescopePromptPrefix {base.CodeschoolRed},
    TelescopePrompt {TelescopeNormal},
	}
end)

local lspsaga = lush(function()
	return {
    -- lspsaga.nvim
    LspSagaDiagnosticBorder {base.NormalNC},
    LspSagaDiagnosticHeader {base.CodeschoolRed},
    LspSagaDiagnosticTruncateLine {base.NormalNC},
    LspFloatWinBorder {base.NormalNC},
    LspSagaBorderTitle {base.Title},
    TargetWord {base.Error},
    ReferencesCount {base.Title},
    ReferencesIcon {base.Special},
    DefinitionCount {base.Title},
    TargetFileName {base.Comment},
    DefinitionIcon {base.Special},
    ProviderTruncateLine {base.NormalNC},
    SagaShadow {base.CodeschoolBg0},
    LspSagaFinderSelection {base.Search},
    DiagnosticTruncateLine {base.NormalNC},
    DiagnosticError {base.LspDiagnosticsDefaultError},
    DiagnosticWarning {base.LspDiagnosticsDefaultWarning},
    DiagnosticInformation {base.LspDiagnosticsDefaultInformation},
    DiagnosticHint {base.LspDiagnosticsDefaultHint},
    DefinitionPreviewTitle {base.Title},
    LspSagaShTruncateLine {base.NormalNC},
    LspSagaDocTruncateLine {base.NormalNC},
    LineDiagTuncateLine {base.NormalNC},
    LspSagaCodeActionTitle {base.Title},
    LspSagaCodeActionTruncateLine {base.NormalNC},
    LspSagaCodeActionContent {base.Normal},
    LspSagaRenamePromptPrefix {base.CodeschoolFg2},
    LspSagaRenameBorder {gui = styles.bold},
    LspSagaHoverBorder {gui = styles.bold},
    LspSagaSignatureHelpBorder {gui = styles.bold},
    LspSagaCodeActionBorder {gui = styles.bold},
    LspSagaAutoPreview {},
    LspSagaDefPreviewBorder {gui = styles.bold},
    LspLinesDiagBorder {gui = styles.bold},
	}
end)

local startify = lush(function()
	return {
    -- vim-startify
    StartifyBracket {base.Delimiter},
    StartifyFile {base.Identifier},
    StartifyNumber {base.Number},
    StartifyPath {base.Directory},
    StartifySlash {base.Delimiter},
    StartifySection {base.Statement},
    StartifySpecial {base.Comment},
    StartifyHeader {base.Title},
    StartifyFooter {base.Title},
    StartifyVar {StartifyPath},
    StartifySelect {base.Title},
	}
end)

local signify = lush(function()
	return {
    -- vim-signify
    SignifySignAdd {base.CodeschoolGreenSign},
    SignifySignChange {base.CodeschoolAquaSign},
    SignifySignDelete {base.CodeschoolRedSign},
	}
end)

local syntastic = lush(function()
	return {
    -- syntastic
    SyntasticError {base.CodeschoolRedUnderline},
    SyntasticWarning {base.CodeschoolYellowUnderline},
    SyntasticErrorSign {base.CodeschoolRedSign},
    SyntasticWarningSign {base.CodeschoolYellowSign},
	}
end)

local nerdtree = lush(function()
	return {
    -- nerdtree
    NERDTreeDir {base.CodeschoolAqua},
    NERDTreeDirSlash {base.CodeschoolAqua},
    NERDTreeOpenable {base.CodeschoolOrange},
    NERDTreeClosable {base.CodeschoolOrange},
    NERDTreeFile {base.CodeschoolFg1},
    NERDTreeExecFile {base.CodeschoolYellow},
    NERDTreeUp {base.CodeschoolGray},
    NERDTreeCWD {base.CodeschoolGreen},
    NERDTreeHelp {base.CodeschoolFg1},
    NERDTreeToggleOn {base.CodeschoolGreen},
	}
end)

local nvimtree = lush(function()
	return {
		-- nvimtree
    NvimTreeImageFile     {base.CodeschoolBlue},
    NvimTreeGitDirty      {fg = colors.neutral_orange},
    NvimTreeGitDeleted    {fg = colors.red},
    NvimTreeGitStaged     {base.CodeschoolGreen},
    NvimTreeGitMerge      {base.CodeschoolGreen},
    NvimTreeGitRenamed    {base.CodeschoolYellow},
    NvimTreeGitNew        {base.CodeschoolYellow},
    NvimTreeIndentMarker  { fg = colors.gray },
    NvimTreeSymlink       { fg = colors.neutral_green },
    NvimTreeFolderIcon    { fg = colors.faded_blue },
    NvimTreeRootFolder    {base.fg3},
    NvimTreeExecFile      {base.CodeschoolOrange},
    NvimTreeSpecialFile   {base.CodeschoolYellow},
	}
end)

local coc = lush(function()
	return {
    -- coc.nvim
    CocErrorSign {base.CodeschoolRedSign},
    CocWarningSign {base.CodeschoolOrangeSign},
    CocInfoSign {base.CodeschoolBlueSign},
    CocHintSign {base.CodeschoolAquaSign},
    CocErrorFloat {base.CodeschoolRed},
    CocWarningFloat {base.CodeschoolOrange},
    CocInfoFloat {base.CodeschoolBlue},
    CocHintFloat {base.CodeschoolAqua},
    CocDiagnosticsError {base.CodeschoolRed},
    CocDiagnosticsWarning {base.CodeschoolOrange},
    CocDiagnosticsInfo {base.CodeschoolBlue},
    CocDiagnosticsHint {base.CodeschoolAqua},
    CocSelectedText {base.CodeschoolRed},
    CocCodeLens {base.CodeschoolGray},
    CocErrorHighlight {base.CodeschoolRedUnderline},
    CocWarningHighlight {base.CodeschoolOrangeUnderline},
    CocInfoHighlight {base.CodeschoolBlueUnderline},
    CocHintHighlight {base.CodeschoolAquaUnderline},
	}
end)

local buftabline = lush(function()
	return {
    -- vim-buftabline
    BufTabLineCurrent {base.TabLineSel},
    BufTabLineActive {base.PmenuSel},
    BufTabLineHidden {base.TabLine},
    BufTabLineFill {base.TabLineFill},
    BufTabLineModifiedCurrent {BufTabLineCurrent},
    BufTabLineModifiedActive {BufTabLineActive},
    BufTabLineModifiedHidden {BufTabLineHidden},
	}
end)

local fzf = lush(function()
	return {
    -- fzf.vim
    Fzf1 {fg = base.CodeschoolBlue.fg.hex, bg = base.CodeschoolBg1.fg.hex},
    Fzf2 {fg = base.CodeschoolOrange.fg.hex, bg = base.CodeschoolBg1.fg.hex},
    Fzf3 {fg = base.CodeschoolFg4.fg.hex, bg = base.CodeschoolBg1.fg.hex},
    ShowMarksHLl {base.CodeschoolBlueSign},
    ShowMarksHLu {base.CodeschoolBlueSign},
    ShowMarksHLo {base.CodeschoolBlueSign},
    ShowMarksHLm {base.CodeschoolBlueSign},
	}
end)

local gitgutter = lush(function()
	return {
    -- git-gutter
    GitGutterAdd {base.CodeschoolGreenSign},
    GitGutterChange {base.CodeschoolAquaSign},
    GitGutterDelete {base.CodeschoolRedSign},
    GitGutterChangeDelete {base.CodeschoolAquaSign},
	}
end)

local gitsigns = lush(function()
	return {
    -- gitsigns.nvim
    GitSignsAdd {base.CodeschoolGreenSign},
    GitSignsChange {base.CodeschoolBlueSign},
    GitSignsDelete {base.CodeschoolRedSign},
    -- GitSignsCurrentLineBlame {base.NonText},
	}
end)

local lsp = lush(function()
	return {
    -- LSP
    -- LspDiagnosticsDefaultError {base.CodeschoolRed},
    LspDiagnosticsSignError {base.CodeschoolErrorSign},
    -- LspDiagnosticsUnderlineError {base.CodeschoolRedUnderline},
    -- LspDiagnosticsDefaultWarning {base.CodeschoolYellow},
    LspDiagnosticsSignWarning {base.CodeschoolWarningSign},
    -- LspDiagnosticsUnderlineWarning {base.CodeschoolYellowUnderline},
    -- LspDiagnosticsDefaultInformation {base.CodeschoolBlue},
    LspDiagnosticsSignInformation {base.CodeschoolBlueSign},
    -- LspDiagnosticsUnderlineInformation {base.CodeschoolBlueUnderline},
    -- LspDiagnosticsDefaultHint {base.CodeschoolAqua},
    LspDiagnosticsSignHint {base.CodeschoolAquaSign},
    LspDiagnosticsUnderlineHint {base.CodeschoolAquaUnderline},
    -- LspDiagnosticsFloatingError {base.CodeschoolRed},
    -- LspDiagnosticsFloatingWarning {base.CodeschoolOrange},
    -- LspDiagnosticsFloatingInformation {base.CodeschoolBlue},
    -- LspDiagnosticsFloatingHint {base.CodeschoolAqua},
    LspDiagnosticsVirtualTextError {base.CodeschoolError},
    LspDiagnosticsVirtualTextWarning {base.CodeschoolWarning},
    LspDiagnosticsVirtualTextInformation {base.CodeschoolBlue},
    LspDiagnosticsVirtualTextHint {base.CodeschoolAqua},
    -- LspReferenceRead {base.CodeschoolYellowBold},
    -- LspReferenceText {base.CodeschoolYellowBold},
    -- LspReferenceWrite {base.CodeschoolYellowBold},
	}
end)

local all_plugins = {
	netrw,
	treesitter,
	telescope,
	lspsaga,
	startify,
	signify,
	syntastic,
	nerdtree,
	nvimtree,
	coc,
	buftabline,
	fzf,
	gitgutter,
	gitsigns,
	lsp
}

local plugins = {}

for _, v in pairs(all_plugins) do
	if utils.contains(user_plugins, v) then
		table.insert(plugins, v)
	end
end

return plugins
