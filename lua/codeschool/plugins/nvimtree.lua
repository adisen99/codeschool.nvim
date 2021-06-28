-- nvimtree highlights
local lush = require("lush")
local base = require("codeschool.base")
local colors = require("codeschool.colors")

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

return nvimtree
