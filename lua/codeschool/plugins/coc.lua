-- coc highlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
	return {
    -- coc.nvim
    CocErrorSign {base.CodeschoolRedSign},
    CocWarningSign {base.CodeschoolOrangeSign},
    CocInfoSign {base.CodeschoolBlueSign},
    CocHintSign {base.CodeschoolAquaSign},
    CocErrorFloat {base.CodeschoolRed},
    CocWarningFloat {base.CodeschoolOrange},
    CocInfoFloat {base.CodeschoolBlue},
    CocHintFloat {base.CodeschoolAqua},
    CocDiagnosticsError {base.CodeschoolRed},
    CocDiagnosticsWarning {base.CodeschoolOrange},
    CocDiagnosticsInfo {base.CodeschoolBlue},
    CocDiagnosticsHint {base.CodeschoolAqua},
    CocSelectedText {base.CodeschoolRed},
    CocCodeLens {base.CodeschoolGray},
    CocErrorHighlight {base.CodeschoolRedUnderline},
    CocWarningHighlight {base.CodeschoolOrangeUnderline},
    CocInfoHighlight {base.CodeschoolBlueUnderline},
    CocHintHighlight {base.CodeschoolAquaUnderline},
	}
end)

return M
