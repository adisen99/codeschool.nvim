-- packer highlights
local lush = require("lush")
local base = require("codeschool.base")

local M = {}

M = lush(function()
	return {
    packerWorking {base.CodeschoolAqua},
    packerFail {base.ErrorMsg},
    packerStatusFail {base.ErrorMsg},
    packerSuccess {base.CodeschoolGreen},
    packerBreakingChange {base.WarningMsg},
    packerString {base.String},
    packerStatusSuccess {base.Constant},
    packerStatusCommit {base.Constant},
    packerProgress {base.Boolean},
    packerBool {base.Boolean},
    packerHash {base.Identifier},
    packerPackageName {base.Label},
    packerStatus {base.Type},
    packerOutput {base.Type},
    packerRelDate {base.Comment},
    packerPackageNotLoaded {base.Comment},
	}
end)

return M
