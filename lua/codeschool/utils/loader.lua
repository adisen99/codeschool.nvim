-- Utility function to load user config

local function load_plugins(config)
  for index, plugin in pairs(config.plugins) do
    if type(plugin) == 'string' then
      local local_plugin = require('codeschool.plugins.' .. plugin)
      config.plugins[index] = local_plugin
    --[[ elseif type(plugin) == 'table' then
      config.plugins[index] = plugin ]]
    end
  end
end

local function load_langs(config)
  for index, lang in pairs(config.langs) do
    if type(lang) == 'string' then
      local local_lang = require('codeschool.languages.' .. lang)
      config.langs[index] = local_lang
    --[[ elseif type(lang) == 'table' then
      config.langs[index] = lang ]]
    end
  end
end

local function load_all(config)
  load_plugins(config)
	load_langs(config)
end

return {load_all = load_all}
