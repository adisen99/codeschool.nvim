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
  --[[ local fg = palette.light
  local red = palette.bright_red
  local green = palette.bright_green
  local yellow = palette.bright_yellow
  local blue = palette.bright_blue
  local purple = palette.bright_purple
  local aqua = palette.bright_cyan
  local orange = palette.bright_orange ]]
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    --[[ fg = palette.dark
    red = palette.faded_red
    green = palette.faded_green
    yellow = palette.faded_yellow
    blue = palette.faded_blue
    purple = palette.faded_purple
    aqua = palette.faded_cyan
    orange = palette.faded_orange ]]
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end
  return {
    StatusLine = { fg = palette.gray, bg = bg },
    StatusLineNC = { fg = palette.accent, bg = palette.accent },
    StatusLineSeparator = { fg = bg },
    StatusLineTerm = { fg = bg },
    StatusLineTermNC = { fg = bg },
  }
end

return M
