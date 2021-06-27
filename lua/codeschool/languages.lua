-- language specific higlights
local lush = require("lush")
local base = require("codeschool.base")
local styles = require("codeschool.settings").styles
local table_concat = table.concat
local config = require("codeschool.config").config

-- golang
local golang = lush(function()
  return {
    goDirective {base.CodeschoolAqua},
    goConstants {base.CodeschoolPurple},
    goDeclaration {base.CodeschoolRed},
    goDeclType {base.CodeschoolBlue},
    goBuiltins {base.CodeschoolOrange},
  }
end)

-- java
local java = lush(function()
  return {
    javaAnnotation {base.CodeschoolBlue},
    javaDocTags {base.CodeschoolAqua},
    javaCommentTitle {base.Comment},
    javaParen {base.CodeschoolFg3},
    javaParen1 {base.CodeschoolFg3},
    javaParen2 {base.CodeschoolFg3},
    javaParen3 {base.CodeschoolFg3},
    javaParen4 {base.CodeschoolFg3},
    javaParen5 {base.CodeschoolFg3},
    javaOperator {base.CodeschoolOrange},
  }
end)

-- xml
local xml = lush(function()
  return {
    xmlTag {base.CodeschoolAquaBold},
    xmlEndTag {base.CodeschoolAquaBold},
    xmlTagName {base.CodeschoolBlue},
    xmlEqual {base.CodeschoolBlue},
    docbkKeyword {base.CodeschoolAquaBold},
    xmlDocTypeDecl {base.CodeschoolGray},
    xmlDocTypeKeyword {base.CodeschoolPurple},
    xmlCdataStart {base.CodeschoolGray},
    xmlCdataCdata {base.CodeschoolPurple},
    dtdFunction {base.CodeschoolGray},
    dtdTagName {base.CodeschoolPurple},
    xmlAttrib {base.CodeschoolOrange},
    xmlProcessingDelim {base.CodeschoolGray},
    dtdParamEntityPunct {base.CodeschoolGray},
    dtdParamEntityDPunct {base.CodeschoolGray},
    xmlAttribPunct {base.CodeschoolGray},
    xmlEntity {base.CodeschoolRed},
    xmlEntityPunct {base.CodeschoolRed},
  }
end)

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

local c = lush(function()
  return {
    cOperator {base.CodeschoolPurple},
    cppOperator {base.CodeschoolPurple},
    cStructure {base.CodeschoolOrange},

  }
end)

local python = lush(function()
  return {
    pythonBuiltin {base.CodeschoolOrange},
    pythonBuiltinObj {base.CodeschoolOrange},
    pythonBuiltinFunc {base.CodeschoolOrange},
    pythonFunction {base.CodeschoolAqua},
    pythonDecorator {base.CodeschoolRed},
    pythonInclude {base.CodeschoolBlue},
    pythonImport {base.CodeschoolBlue},
    pythonRun {base.CodeschoolBlue},
    pythonCoding {base.CodeschoolBlue},
    pythonOperator {base.CodeschoolRed},
    pythonException {base.CodeschoolRed},
    pythonExceptions {base.CodeschoolPurple},
    pythonBoolean {base.CodeschoolPurple},
    pythonDot {base.CodeschoolFg3},
    pythonConditional {base.CodeschoolRed},
    pythonRepeat {base.CodeschoolRed},
    pythonDottedName {base.CodeschoolGreenBold},
  }
end)

local clojure = lush(function()
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

local css = lush(function()
  return {
    cssBraces {base.CodeschoolBlue},
    cssFunctionName {base.CodeschoolYellow},
    cssIdentifier {base.CodeschoolOrange},
    cssClassName {base.CodeschoolGreen},
    cssColor {base.CodeschoolBlue},
    cssSelectorOp {base.CodeschoolBlue},
    cssSelectorOp2 {base.CodeschoolBlue},
    cssImportant {base.CodeschoolGreen},
    cssVendor {base.CodeschoolFg1},
    cssTextProp {base.CodeschoolAqua},
    cssAnimationProp {base.CodeschoolAqua},
    cssUIProp {base.CodeschoolYellow},
    cssTransformProp {base.CodeschoolAqua},
    cssTransitionProp {base.CodeschoolAqua},
    cssPrintProp {base.CodeschoolAqua},
    cssPositioningProp {base.CodeschoolYellow},
    cssBoxProp {base.CodeschoolAqua},
    cssFontDescriptorProp {base.CodeschoolAqua},
    cssFlexibleBoxProp {base.CodeschoolAqua},
    cssBorderOutlineProp {base.CodeschoolAqua},
    cssBackgroundProp {base.CodeschoolAqua},
    cssMarginProp {base.CodeschoolAqua},
    cssListProp {base.CodeschoolAqua},
    cssTableProp {base.CodeschoolAqua},
    cssFontProp {base.CodeschoolAqua},
    cssPaddingProp {base.CodeschoolAqua},
    cssDimensionProp {base.CodeschoolAqua},
    cssRenderProp {base.CodeschoolAqua},
    cssColorProp {base.CodeschoolAqua},
    cssGeneratedContentProp {base.CodeschoolAqua},
  }
end)

local js = lush(function()
  return {
    javaScriptBraces {base.CodeschoolFg1},
    javaScriptFunction {base.CodeschoolAqua},
    javaScriptIdentifier {base.CodeschoolRed},
    javaScriptMember {base.CodeschoolBlue},
    javaScriptNumber {base.CodeschoolPurple},
    javaScriptNull {base.CodeschoolPurple},
    javaScriptParens {base.CodeschoolFg3},
    javascriptImport {base.CodeschoolAqua},
    javascriptExport {base.CodeschoolAqua},
    javascriptClassKeyword {base.CodeschoolAqua},
    javascriptClassExtends {base.CodeschoolAqua},
    javascriptDefault {base.CodeschoolAqua},
    javascriptClassName {base.CodeschoolYellow},
    javascriptClassSuperName {base.CodeschoolYellow},
    javascriptGlobal {base.CodeschoolYellow},
    javascriptEndColons {base.CodeschoolFg1},
    javascriptFuncArg {base.CodeschoolFg1},
    javascriptGlobalMethod {base.CodeschoolFg1},
    javascriptNodeGlobal {base.CodeschoolFg1},
    javascriptBOMWindowProp {base.CodeschoolFg1},
    javascriptArrayMethod {base.CodeschoolFg1},
    javascriptArrayStaticMethod {base.CodeschoolFg1},
    javascriptCacheMethod {base.CodeschoolFg1},
    javascriptDateMethod {base.CodeschoolFg1},
    javascriptMathStaticMethod {base.CodeschoolFg1},
    javascriptProp {base.CodeschoolFg1},
    javascriptURLUtilsProp {base.CodeschoolFg1},
    javascriptBOMNavigatorProp {base.CodeschoolFg1},
    javascriptDOMDocMethod {base.CodeschoolFg1},
    javascriptDOMDocProp {base.CodeschoolFg1},
    javascriptBOMLocationMethod {base.CodeschoolFg1},
    javascriptBOMWindowMethod {base.CodeschoolFg1},
    javascriptStringMethod {base.CodeschoolFg1},
    javascriptVariable {base.CodeschoolOrange},
    javascriptClassSuper {base.CodeschoolOrange},
    javascriptFuncKeyword {base.CodeschoolAqua},
    javascriptAsyncFunc {base.CodeschoolAqua},
    javascriptClassStatic {base.CodeschoolOrange},
    javascriptOperator {base.CodeschoolRed},
    javascriptForOperator {base.CodeschoolRed},
    javascriptYield {base.CodeschoolRed},
    javascriptExceptions {base.CodeschoolRed},
    javascriptMessage {base.CodeschoolRed},
    javascriptTemplateSB {base.CodeschoolAqua},
    javascriptTemplateSubstitution {base.CodeschoolFg1},
    javascriptLabel {base.CodeschoolFg1},
    javascriptObjectLabel {base.CodeschoolFg1},
    javascriptPropertyName {base.CodeschoolFg1},
    javascriptLogicSymbols {base.CodeschoolFg1},
    javascriptArrowFunc {base.CodeschoolYellow},
    javascriptDocParamName {base.CodeschoolFg4},
    javascriptDocTags {base.CodeschoolFg4},
    javascriptDocNotation {base.CodeschoolFg4},
    javascriptDocParamType {base.CodeschoolFg4},
    javascriptDocNamedParamType {base.CodeschoolFg4},
    javascriptBrackets {base.CodeschoolFg1},
    javascriptDOMElemAttrs {base.CodeschoolFg1},
    javascriptDOMEventMethod {base.CodeschoolFg1},
    javascriptDOMNodeMethod {base.CodeschoolFg1},
    javascriptDOMStorageMethod {base.CodeschoolFg1},
    javascriptHeadersMethod {base.CodeschoolFg1},
    javascriptAsyncFuncKeyword {base.CodeschoolRed},
    javascriptAwaitFuncKeyword {base.CodeschoolRed},
    jsClassKeyword {base.CodeschoolAqua},
    jsExtendsKeyword {base.CodeschoolAqua},
    jsExportDefault {base.CodeschoolAqua},
    jsTemplateBraces {base.CodeschoolAqua},
    jsGlobalNodeObjects {base.CodeschoolBlue},
    jsGlobalObjects {base.CodeschoolBlue},
    jsObjectKey {base.CodeschoolGreenBold},
    jsFunction {base.CodeschoolAqua},
    jsFuncCall {base.CodeschoolBlue},
    jsFuncParens {base.CodeschoolFg3},
    jsParens {base.CodeschoolFg3},
    jsNull {base.CodeschoolPurple},
    jsUndefined {base.CodeschoolPurple},
    jsClassDefinition {base.CodeschoolYellow},
    jsOperatorKeyword {base.CodeschoolRed},
  }
end)

local typescript = lush(function()
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

local jsx = lush(function()
  return {
    jsxTagName {base.CodeschoolAqua},
    jsxComponentName {base.CodeschoolGreen},
    jsxCloseString {base.CodeschoolFg4},
    jsxAttrib {base.CodeschoolYellow},
    jsxEqual {base.CodeschoolAqua},
  }
end)

local purescript = lush(function()
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

local coffeescript = lush(function()
  return {
    coffeeExtendedOp {base.CodeschoolFg3},
    coffeeSpecialOp {base.CodeschoolFg3},
    coffeeCurly {base.CodeschoolOrange},
    coffeeParen {base.CodeschoolFg3},
    coffeeBracket {base.CodeschoolOrange},
  }
end)

local ruby = lush(function()
  return {
    rubyStringDelimiter {base.CodeschoolGreen},
    rubyInterpolationDelimiter {base.CodeschoolAqua},
  }
end)

local objc = lush(function()
  return {objcTypeModifier {base.CodeschoolRed}, objcDirective {base.CodeschoolBlue}}
end)

local moonscript = lush(function()
  return {
    moonSpecialOp {base.CodeschoolFg3},
    moonExtendedOp {base.CodeschoolFg3},
    moonFunction {base.CodeschoolFg3},
    moonObject {base.CodeschoolYellow},
  }
end)

local elixir = lush(function()
  return {
    elixirDocString {base.Comment},
    elixirStringDelimiter {base.CodeschoolGreen},
    elixirInterpolationDelimiter {base.CodeschoolAqua},
    elixirModuleDeclaration {base.CodeschoolYellow},
  }
end)

local scala = lush(function()
  return {
    scalaNameDefinition {base.CodeschoolFg1},
    scalaCaseFollowing {base.CodeschoolFg1},
    scalaCapitalWord {base.CodeschoolFg1},
    scalaTypeExtension {base.CodeschoolFg1},
    scalaKeyword {base.CodeschoolRed},
    scalaKeywordModifier {base.CodeschoolRed},
    scalaSpecial {base.CodeschoolAqua},
    scalaOperator {base.CodeschoolFg1},
    scalaTypeDeclaration {base.CodeschoolYellow},
    scalaTypeTypePostDeclaration {base.CodeschoolYellow},
    scalaInstanceDeclaration {base.CodeschoolFg1},
    scalaInterpolation {base.CodeschoolAqua},
  }
end)

local markdown = lush(function()
  return {
    markdownItalic {fg = base.CodeschoolFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {base.CodeschoolGreenBold},
    markdownH2 {markdownH1},
    markdownH3 {base.CodeschoolYellowBold},
    markdownH4 {markdownH3},
    markdownH5 {base.CodeschoolYellow},
    markdownH6 {markdownH5},
    markdownCode {base.CodeschoolAqua},
    markdownCodeBlock {base.CodeschoolAqua},
    markdownCodeDelimiter {base.CodeschoolAqua},
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
    markdownUrlTitleDelimiter {base.CodeschoolGreen},
    markdownLinkText {fg = base.CodeschoolGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
  }
end)

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

local json = lush(function()
  return {
    jsonKeyword {base.CodeschoolGreen},
    jsonQuote {base.CodeschoolGreen},
    jsonBraces {base.CodeschoolFg1},
    jsonString {base.CodeschoolFg1},
  }
end)

local csharp = lush(function()
  return {
    csBraces {base.CodeschoolFg1},
    csEndColon {base.CodeschoolFg1},
    csLogicSymbols {base.CodeschoolFg1},
    csParens {base.CodeschoolFg3},
    csOpSymbols {base.CodeschoolFg3},
    csInterpolationDelimiter {base.CodeschoolFg3},
    csInterpolationAlignDel {base.CodeschoolAquaBold},
    csInterpolationFormat {base.CodeschoolAqua},
    csInterpolationFormatDel {base.CodeschoolAquaBold},
  }
end)

local rust = lush(function()
  return {
    rustSigil {base.CodeschoolOrange},
    rustEscape {base.CodeschoolAqua},
    rustStringContinuation {base.CodeschoolAqua},
    rustEnum {base.CodeschoolAqua},
    rustStructure {base.CodeschoolAqua},
    rustModPathSep {base.CodeschoolFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {base.CodeschoolAqua},
  }
end)

local ocaml = lush(function()
  return {
    ocamlOperator {base.CodeschoolFg1},
    ocamlKeyChar {base.CodeschoolOrange},
    ocamlArrow {base.CodeschoolOrange},
    ocamlInfixOpKeyword {base.CodeschoolRed},
    ocamlConstructor {base.CodeschoolOrange},
  }
end)

local lua = lush(function()
  return {
    luaIn {base.CodeschoolRed},
    luaFunction {base.CodeschoolAqua},
    luaTable {base.CodeschoolOrange},
  }
end)

--[[ local langs = lush.merge({
  golang,
  java,
  xml,
  viml,
  c,
  python,
  clojure,
  html,
  css,
  js,
  typescript,
  jsx,
  purescript,
  coffeescript,
  ruby,
  objc,
  moonscript,
  elixir,
  scala,
  markdown,
  haskell,
  json,
  csharp,
  rust,
  ocaml,
  lua,
}) ]]

local langs = lush.merge(config.langs)

return langs
