-- gitgutter highlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
	return {
    -- git-gutter
    GitGutterAdd {base.CodeschoolGreenSign},
    GitGutterChange {base.CodeschoolAquaSign},
    GitGutterDelete {base.CodeschoolRedSign},
    GitGutterChangeDelete {base.CodeschoolAquaSign},
	}
end)

return M
