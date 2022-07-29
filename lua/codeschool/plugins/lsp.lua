-- lsp highlights
local lush = require("lush")
local base = require("codeschool.base")
local colors = require("codeschool.colors")
local utils = require("codeschool.utils")
local styles = require("codeschool.settings").styles

local M = {}

local hls_lspreference = utils.get_color_from_var(vim.g.codeschool_hls_lspreference, base.yellow,
                                               colors)

M = lush(function()
	return {
    -- LSP
    LspCodeLens {base.CodeschoolGray},
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
    LspReferenceRead {fg = base.bg0, bg = hls_lspreference},
    LspReferenceText {fg = base.bg0, bg = hls_lspreference},
    LspReferenceWrite {fg = base.bg0, bg = hls_lspreference},
	}
end)

return M
