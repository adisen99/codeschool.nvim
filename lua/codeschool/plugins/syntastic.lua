-- syntastic highlights
local lush = require("lush")
local base = require("codeschool.base")

local syntastic = lush(function()
	return {
    -- syntastic
    SyntasticError {base.CodeschoolRedUnderline},
    SyntasticWarning {base.CodeschoolYellowUnderline},
    SyntasticErrorSign {base.CodeschoolRedSign},
    SyntasticWarningSign {base.CodeschoolYellowSign},
	}
end)

return syntastic
