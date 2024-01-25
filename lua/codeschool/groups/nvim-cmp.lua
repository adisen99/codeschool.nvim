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
  local orange = palette.bright_orange
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    fg = palette.dark
    red = palette.faded_red
    orange = palette.faded_orange
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end

  return {
    CmpItemAbbr = { fg = fg },
    CmpItemAbbrDeprecated = { fg = red },
    CmpItemAbbrMatch = { fg = orange },
    CmpItemAbbrMatchFuzzy = { fg = orange },
    CmpItemMenu = { fg = palette.medium_gray },
    CmpItemKind = { fg = palette.light_gray },
  }
end

return M
