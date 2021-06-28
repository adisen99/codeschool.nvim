-- local lush = require("lush")
local base = require("codeschool.base")
--[[ local plugins = require("codeschool.plugins.highlights")
local languages = require("codeschool.languages") ]]
local loader = require("codeschool.utils.loader")
local config_module = require("codeschool.config")
local config = config_module.config

local function setup(user_config)
	if user_config then
		config_module.apply_config(user_config)
	elseif vim.cmd('colorscheme codeschool') then
		vim.schedule(function()
			vim.api.nvim_err_writeln(
			[[codeschool.nvim: vimscript support will end soon, please change your config to lua or wrap it around lua << EOF ... EOF]]
			)
		end)
	end
	loader.load_all(config)
end

return {base = base, setup = setup}
