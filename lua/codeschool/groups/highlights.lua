-- main highlights

local M = {}

-- get the background color and set default as dark
local bgc = vim.o.background
if bgc == nil then
  bgc = "dark"
  vim.o.background = bgc
end

-- set default palette (for dark background)

function M.highlight(palette, opts)
  -- main dark bg colors
  local bg = palette.dark
  local fg = palette.light
  local red = palette.bright_red
  local green = palette.bright_green
  local yellow = palette.bright_yellow
  local blue = palette.bright_blue
  local purple = palette.bright_purple
  local aqua = palette.bright_cyan
  local orange = palette.bright_orange
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    fg = palette.dark
    red = palette.faded_red
    green = palette.faded_green
    yellow = palette.faded_yellow
    blue = palette.faded_blue
    purple = palette.faded_purple
    aqua = palette.faded_cyan
    orange = palette.faded_orange
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end

  -- now set colors
  return {
    Normal = {
      fg = fg,
      bg = opts.transparent and palette.none or bg,
    },
    SignColumn = vim.tbl_extend("force", { bg = opts.transparent and palette.none or bg }, opts.styles.sign_column),
    MsgArea = {
      fg = fg,
      bg = opts.transparent and palette.none or bg,
    },
    ModeMsg = { fg = fg, bg = bg },
    MsgSeparator = { fg = fg, bg = bg },
    SpellBad = { sp = palette.error, undercurl = true },
    SpellCap = { sp = yellow, undercurl = true },
    SpellLocal = { sp = palette.sign_add, undercurl = true },
    SpellRare = { sp = purple, undercurl = true },
    NormalNC = {
      fg = fg,
      bg = opts.transparent and palette.none or bg,
    },
    Pmenu = { fg = palette.light_gray, bg = palette.accent },
    PmenuSel = { fg = blue, bg = bg },
    WildMenu = { fg = blue, bg = bg },
    CursorLineNr = {
      fg = palette.light_gray,
      bold = true,
    },
    Comment = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    Folded = { fg = palette.light_gray, bg = bg },
    FoldColumn = { fg = palette.lght_gray, bg = bg },
    LineNr = { fg = palette.gray },
    Whitespace = { fg = palette.gray },
    VertSplit = vim.tbl_extend("force", { fg = bg, bg = palette.accent }, opts.styles.vert_split),
    CursorLine = vim.tbl_extend(
      "force",
      { bg = palette.accent },
      opts.styles.cursor_line
    ),
    CursorColumn = { bg = bg },
    ColorColumn = vim.tbl_extend("force", { bg = bg }, opts.styles.color_column),
    NormalFloat = {
      bg = opts.transparent and palette.none or bg,
    },
    Visual = { bg = palette.gray },
    VisualNOS = { bg = bg },
    WarningMsg = { fg = palette.error, bg = bg },
    DiffAdd = { bg = palette.neogit_green },
    DiffText = { bg = palette.neogit_blue },
    DiffChange = {
      fg = palette.sign_change,
      bg = palette.neogit_blue,
    },
    DiffDelete = { fg = palette.sign_delete, bg = palette.neogit_red },
    QuickFixLine = { bg = yellow },
    PmenuSbar = { bg = bg },
    PmenuThumb = { bg = palette.light_gray },
    MatchWord = { underline = true },
    MatchParen = { fg = palette.medium_gray_blue, bg = bg, underline = true },
    MatchWordCur = { underline = true },
    MatchParenCur = { underline = true },
    Cursor = vim.tbl_extend("force", { fg = palette.cursor_fg, bg = palette.cursor_bg }, opts.styles.cursor),
    lCursor = vim.tbl_extend("force", { fg = palette.cursor_fg, bg = palette.cursor_bg }, opts.styles.cursor),
    CursorIM = vim.tbl_extend("force", { fg = palette.cursor_fg, bg = palette.cursor_bg }, opts.styles.cursor),
    TermCursor = {
      fg = palette.cursor_fg,
      bg = palette.cursor_bg,
      reverse = false,
    },
    TermCursorNC = {
      fg = bg,
      reverse = false,
    },
    Conceal = { fg = palette.medium_gray_blue },
    Directory = { fg = blue },
    SpecialKey = { fg = palette.light_gray },
    Title = { fg = green },
    ErrorMsg = { fg = palette.error, bg = bg, bold = true },
    -- TODO : check Search and IncSearch
    Search = vim.tbl_extend("force", { fg = orange, bg = bg }, opts.styles.search),
    IncSearch = vim.tbl_extend("force", { fg = bg, bg = palette.cursor_fg }, opts.styles.inc_search),
    Substitute = { fg = bg, bg = orange },
    MoreMsg = { fg = aqua },
    Question = { fg = orange },
    EndOfBuffer = { fg = bg },
    NonText = { fg = bg },
    Variable = vim.tbl_extend("force", { fg = palette.white }, opts.styles.variables),
    String = vim.tbl_extend("force", { fg = palette.medium_gray_blue }, opts.styles.string),
    Character = { fg = blue },
    Constant = { fg = blue },
    Number = { fg = blue },
    Boolean = vim.tbl_extend("force", { fg = blue }, opts.styles.boolean),
    Float = { fg = blue },
    Identifier = { fg = purple },
    Function = vim.tbl_extend("force", { fg = aqua }, opts.styles.functions),
    Operator = { fg = palette.white },
    Type = vim.tbl_extend("force", { fg = aqua }, opts.styles.type),
    StorageClass = { fg = green },
    Structure = { fg = red },
    Typedef = { fg = aqua },
    Keyword = vim.tbl_extend("force", { fg = red }, opts.styles.keywords),
    Statement = { fg = red },
    Conditional = { fg = red },
    Repeat = { fg = red },
    Label = { fg = green },
    Exception = { fg = red },
    Include = { fg = red },
    PreProc = { fg = red },
    Define = { fg = red },
    Macro = { fg = red },
    PreCondit = { fg = red },
    Special = { fg = palette.white },
    SpecialChar = { fg = blue },
    Tag = { fg = aqua },
    Debug = { fg = red },
    Delimiter = { fg = palette.white },
    SpecialComment = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Ignore = { fg = aqua, bg = bg, bold = true },
    Todo = { fg = red, bg = bg, bold = true, italic = true },
    Error = { fg = palette.error, bg = bg, bold = true },
    TabLine = { fg = palette.gray, bg = bg },
    TabLineSel = vim.tbl_extend("force", { fg = palette.white, bg = bg }, opts.styles.tabline_sel),
    TabLineFill = { fg = palette.white, bg = bg },
    WinSeparator = { fg = palette.medium_gray, bg = bg },
    DiagnosticFloatingError = { fg = palette.error },
    FloatBorder = { fg = palette.light_gray },
  }
end

return M
