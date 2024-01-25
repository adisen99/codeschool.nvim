local M = {}


local bgc = vim.o.background
if bgc == nil then
  bgc = "dark"
  vim.o.background = bgc
end


function M.highlight(palette, opts)
  -- main dark bg colors
  local bg = palette.dark
  local fg = palette.light
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    fg = palette.dark
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end
  return {
    MasonNormal = { link = "NormalFloat", default = true },
    MasonHeader = { bold = true, fg = fg, bg = bg, default = true },
    MasonHeaderSecondary = {
      bold = true,
      fg = palette.light_gray,
      bg = bg,
      default = true,
    },
    MasonHighlight = { fg = fg, default = true },
    MasonHighlightBlock = { bg = fg, fg = bg, default = true },
    MasonHighlightBlockBold = {
      bg = fg,
      fg = bg,
      bold = true,
      default = true,
    },
    MasonHighlightSecondary = { fg = fg, default = true },
    MasonHighlightBlockSecondary = {
      bg = fg,
      fg = bg,
      default = true,
    },
    MasonHighlightBlockBoldSecondary = {
      bg = fg,
      fg = bg,
      bold = true,
      default = true,
    },
    MasonLink = { link = "MasonHighlight", default = true },
    MasonMuted = { fg = palette.medium_gray, default = true },
    MasonMutedBlock = { bg = palette.accent, fg = palette.light_gray, default = true },
    MasonMutedBlockBold = {
      bg = palette.gray,
      fg = bg,
      bold = true,
      default = true,
    },
    MasonError = { link = "ErrorMsg", default = true },
    MasonWarning = { link = "WarningMsg", default = true },
    MasonHeading = { bold = true, default = true },
  }
end

return M
