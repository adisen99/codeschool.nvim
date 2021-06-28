-- nerdtree highlights
local lush = require("lush")
local base = require("codeschool.base")

local nerdtree = lush(function()
	return {
    -- nerdtree
    NERDTreeDir {base.CodeschoolAqua},
    NERDTreeDirSlash {base.CodeschoolAqua},
    NERDTreeOpenable {base.CodeschoolOrange},
    NERDTreeClosable {base.CodeschoolOrange},
    NERDTreeFile {base.CodeschoolFg1},
    NERDTreeExecFile {base.CodeschoolYellow},
    NERDTreeUp {base.CodeschoolGray},
    NERDTreeCWD {base.CodeschoolGreen},
    NERDTreeHelp {base.CodeschoolFg1},
    NERDTreeToggleOn {base.CodeschoolGreen},
	}
end)

return nerdtree
