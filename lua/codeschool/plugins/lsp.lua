-- lsp highlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
	return {
    -- LSP
    -- LspDiagnosticsDefaultError {base.CodeschoolRed},
    LspDiagnosticsSignError {base.CodeschoolErrorSign},
    -- LspDiagnosticsUnderlineError {base.CodeschoolRedUnderline},
    -- LspDiagnosticsDefaultWarning {base.CodeschoolYellow},
    LspDiagnosticsSignWarning {base.CodeschoolWarningSign},
    -- LspDiagnosticsUnderlineWarning {base.CodeschoolYellowUnderline},
    -- LspDiagnosticsDefaultInformation {base.CodeschoolBlue},
    LspDiagnosticsSignInformation {base.CodeschoolBlueSign},
    -- LspDiagnosticsUnderlineInformation {base.CodeschoolBlueUnderline},
    -- LspDiagnosticsDefaultHint {base.CodeschoolAqua},
    LspDiagnosticsSignHint {base.CodeschoolAquaSign},
    LspDiagnosticsUnderlineHint {base.CodeschoolAquaUnderline},
    -- LspDiagnosticsFloatingError {base.CodeschoolRed},
    -- LspDiagnosticsFloatingWarning {base.CodeschoolOrange},
    -- LspDiagnosticsFloatingInformation {base.CodeschoolBlue},
    -- LspDiagnosticsFloatingHint {base.CodeschoolAqua},
    LspDiagnosticsVirtualTextError {base.CodeschoolError},
    LspDiagnosticsVirtualTextWarning {base.CodeschoolWarning},
    LspDiagnosticsVirtualTextInformation {base.CodeschoolBlue},
    LspDiagnosticsVirtualTextHint {base.CodeschoolAqua},
    -- LspReferenceRead {base.CodeschoolYellowBold},
    -- LspReferenceText {base.CodeschoolYellowBold},
    -- LspReferenceWrite {base.CodeschoolYellowBold},
	}
end)

return M
