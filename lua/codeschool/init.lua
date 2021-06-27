local lush = require("lush")
local base = require("codeschool.base")
local plugins = require("codeschool.plugins.highlights")
local languages = require("codeschool.languages")
local config_module = require('codeschool.config')

local config = config_module.config

local specs = {base, languages, plugins, config}
local spec = lush.merge(specs)

local function setup(user_config)
  if user_config then
    config_module.apply_configuration(user_config)
  end
end

return {spec = spec, setup = setup}
