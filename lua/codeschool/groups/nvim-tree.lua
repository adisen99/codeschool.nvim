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
  --[[ local yellow = palette.bright_yellow
  local blue = palette.bright_blue
  local purple = palette.bright_purple ]]
  local aqua = palette.bright_cyan
  local orange = palette.bright_orange
  -- light bg colors
  if bgc == "light" then
    bg = palette.light
    fg = palette.dark
    red = palette.faded_red
    green = palette.faded_green
    --[[ yellow = palette.faded_yellow
    blue = palette.faded_blue
    purple = palette.faded_purple ]]
    aqua = palette.faded_cyan
    orange = palette.faded_orange
  end

  -- set the contrast
  if opts.contrast == "hard" then
    bg = palette[bg .. "_hard"]
  elseif opts.contrast == "soft" then
    bg = palette[bg .. "soft"]
  end

  return {
    NvimTreeFolderIcon = { fg = palette.white },
    NvimTreeIndentMarker = { fg = palette.accent },
    NvimTreeNormal = { fg = palette.light_gray, bg = palette.accent },
    NvimTreeVertSplit = { fg = palette.accent, bg = palette.accent },
    NvimTreeFolderName = { fg = palette.white },
    NvimTreeOpenedFolderName = { fg = palette.white, bold = true },
    NvimTreeEmptyFolderName = { fg = palette.medium_gray },
    NvimTreeGitIgnored = { fg = palette.medium_gray },
    NvimTreeImageFile = { fg = palette.light_gray },
    NvimTreeSpecialFile = { fg = orange },
    NvimTreeEndOfBuffer = { fg = palette.accent },
    NvimTreeCursorLine = { bg = palette.accent },
    NvimTreeGitignoreIcon = { fg = red },
    NvimTreeGitStaged = { fg = aqua },
    NvimTreeGitNew = { fg = aqua },
    NvimTreeGitRenamed = { fg = aqua },
    NvimTreeGitDeleted = { fg = palette.sign_delete },
    NvimTreeGitMerge = { fg = palette.info },
    NvimTreeGitDirty = { fg = palette.info },
    NvimTreeSymlink = { fg = aqua },
    NvimTreeRootFolder = { fg = fg, bold = true },
    NvimTreeExecFile = { fg = green },
    NvimTreeStatusLine = { fg = palette.accent, bg = palette.accent },
    NvimTreeStatusLineNC = { fg = palette.accent, bg = palette.accent },
    NvimTreeStatusNC = { fg = palette.accent, bg = palette.accent },
    NvimTreeLspDiagnosticsErr = { fg = palette.error },
    NvimTreeLspDiagnosticsError = { fg = palette.error },
    NvimTreeLspDiagnosticsHint = { fg = palette.hint },
    NvimTreeLspDiagnosticsInformation = { fg = palette.info },
    NvimTreeLspDiagnosticsWarning = { fg = palette.warning },
  }
end

return M
