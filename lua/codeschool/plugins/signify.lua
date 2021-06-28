-- signify highlights
local lush = require("lush")
local base = require("codeschool.base")

local signify = lush(function()
	return {
    -- vim-signify
    SignifySignAdd {base.CodeschoolGreenSign},
    SignifySignChange {base.CodeschoolAquaSign},
    SignifySignDelete {base.CodeschoolRedSign},
	}
end)

return signify
