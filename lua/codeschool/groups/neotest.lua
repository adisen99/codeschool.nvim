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
  local green = palette.bright_green
  local yellow = palette.bright_yellow
  local blue = palette.bright_blue
  local purple = palette.bright_purple
  local aqua = palette.bright_cyan
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    fg = palette.dark
    green = palette.faded_green
    yellow = palette.faded_yellow
    blue = palette.faded_blue
    purple = palette.faded_purple
    aqua = palette.faded_cyan
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end

  return {
    NeogitNotificationInfo = { fg = palette.sign_add },
    NeogitNotificationWarning = { fg = palette.warning },
    NeogitNotificationError = { fg = palette.sign_delete },
    NeogitDiffAddHighlight = { fg = palette.sign_add, bg = palette.neogit_green },
    NeogitDiffDeleteHighlight = { fg = palette.sign_delete, bg = palette.neogit_red },
    NeogitDiffContextHighlight = { fg = fg, bg = palette.accent },
    NeogitHunkHeader = { fg = fg, bg = palette.accent },
    NeogitHunkHeaderHighlight = { fg = fg, bg = palette.accent },
    NeogitDiffAdd = { fg = palette.sign_add, bg = palette.neogit_green },
    NeogitDiffDelete = { fg = palette.sign_delete, bg = palette.neogit_red },
    NeotestAdapterName = { fg = purple },
    NeotestDir = { fg = aqua },
    NeotestExpandMarker = { fg = palette.gray },
    NeotestFailed = { fg = palette.error },
    NeotestFile = { fg = aqua },
    NeotestFocused = { bold = true },
    NeotestIndent = { fg = fg },
    NeotestNamespace = { fg = blue },
    NeotestPassed = { fg = green },
    NeotestRunning = { fg = yellow },
    NeotestSkipped = { fg = aqua },
  }
end

return M
