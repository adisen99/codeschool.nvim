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
  local red = palette.bright_red
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    red = palette.faded_red
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end

  return {
    WhichKey = { fg = palette.light_gray },
    WhichKeySeperator = { fg = palette.gray },
    WhichKeyGroup = { fg = red },
    WhichKeyDesc = { fg = palette.light_gray },
    WhichKeyFloat = { bg = bg },
  }
end

return M
