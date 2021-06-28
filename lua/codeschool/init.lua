local lush = require("lush")
local base = require("codeschool.base")
--[[ local plugins = require("codeschool.plugins.highlights")
local languages = require("codeschool.languages") ]]
local loader = require("codeschool.utils.loader")
local config_module = require("codeschool.config")
local config = config_module.config

local function setup(user_config)
	if user_config then
		config_module.apply_config(user_config)
	end
	local load_plugins = loader.load_plugins(config)
	local load_langs = loader.load_langs(config)
	return lush.merge({base, load_plugins, load_langs})
end

return setup
