-- netrw highlights
local lush = require("lush")
local base = require("codeschool.base")

local netrw = lush(function()
  return {
    -- netrw
    netrwDir {base.CodeschoolAqua},
    netrwClassify {base.CodeschoolAqua},
    netrwLink {base.CodeschoolGray},
    netrwSymLink {base.CodeschoolFg1},
    netrwExe {base.CodeschoolYellow},
    netrwComment {base.CodeschoolGray},
    netrwList {base.CodeschoolBlue},
    netrwHelpCmd {base.CodeschoolAqua},
    netrwCmdSep {base.CodeschoolFg3},
    netrwVersion {base.CodeschoolGreen},
	}
end)

return netrw
