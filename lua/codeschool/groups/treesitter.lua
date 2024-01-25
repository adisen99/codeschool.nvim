local M = {}

-- get the background color and set default as dark
local bgc = vim.o.background
if bgc == nil then
  bgc = "dark"
  vim.o.background = bgc
end

function M.highlight(palette, opts)
  -- main dark bg colors
  local bg = palette.dark
  local fg = palette.light
  local red = palette.bright_red
  local green = palette.bright_green
  local yellow = palette.bright_yellow
  local blue = palette.bright_blue
  local purple = palette.bright_purple
  local aqua = palette.bright_aqua
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
    aqua = palette.faded_aqua
    orange = palette.faded_orange
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end

  return {
    ["@comment"] = vim.tbl_extend(
      "force",
      { fg = palette.medium_gray },
      opts.styles.comments
    ),
    ["@annotation"] = { fg = palette.white },
    ["@attribute"] = { fg = palette.white },
    ["@constructor"] = { fg = aqua },
    ["@type"] = vim.tbl_extend("force", { fg = palette.white }, opts.styles.type),
    ["@type.builtin"] = { fg = palette.white },
    ["@conditional"] = { fg = palette.gray_blue },
    ["@exception"] = { fg = red },
    ["@include"] = { fg = red },
    ["@keyword"] = vim.tbl_extend(
      "force",
      { fg = palette.gray_blue },
      opts.styles.keywords
    ),
    ["@keyword.function"] = vim.tbl_extend(
      "force",
      { fg = palette.gray_blue },
      opts.styles.keywords
    ),
    ["@label"] = { fg = palette.white },
    ["@namespace"] = { fg = palette.white },
    ["@repeat"] = { fg = palette.gray_blue },
    ["@constant"] = { fg = palette.white },
    ["@const.builtin"] = { fg = red },
    ["@float"] = { fg = red },
    ["@number"] = { fg = red },
    ["@boolean"] = { fg = red },
    ["@character"] = { fg = green },
    ["@error"] = { fg = palette.error },
    ["@function"] = vim.tbl_extend(
      "force",
      { fg = aqua },
      opts.styles.functions
    ),
    ["@function.builtin"] = { fg = aqua },
    ["@method"] = { fg = aqua },
    ["@const.macro"] = { fg = aqua },
    ["@function.macro"] = { fg = aqua },
    ["@variable"] = vim.tbl_extend(
      "force",
      { fg = palette.white },
      opts.styles.variables
    ),
    ["@variable.builtin"] = { fg = palette.white },
    ["@property"] = { fg = palette.white },
    ["@operator"] = { fg = palette.white },
    ["@field"] = { fg = palette.white },
    ["@parameter"] = { fg = palette.white },
    ["@parameter.reference"] = { fg = palette.white },
    ["@symbol"] = { fg = palette.medium_gray },
    ["@text"] = { fg = fg },
    ["@punctuation.delimiter"] = { fg = palette.white },
    ["@tag.delimiter"] = { fg = palette.white },
    ["@punctuation.bracket"] = { fg = palette.white },
    ["@punctuation.special"] = { fg = palette.medium_gray },
    ["@string"] = { fg = palette.medium_gray_blue },
    ["@string.regex"] = { fg = palette.medium_gray_blue },
    ["@string.escape"] = { fg = palette.medium_gray_blue },
    ["@tag"] = { fg = blue },
    ["@emphasis"] = { italic = true },
    ["@underline"] = { underline = true },
    ["@title"] = { fg = palette.medium_gray },
    ["@literal"] = { fg = palette.medium_gray },
    ["@uri"] = { fg = aqua, underline = true },
    ["@keyword.operator"] = { fg = palette.gray_blue },
    ["@structure"] = { fg = palette.gray_blue },
    ["@strong"] = { fg = palette.medium_gray },
    ["@query.linter.error"] = { fg = palette.warning },
  }
end

return M
