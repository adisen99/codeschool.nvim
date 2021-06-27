-- Setup options to use specific plugins and langs

local config = {
	-- TODO add a similar option for global options to make it pure lua
  -- options = {},
	plugins = {},
	langs = {},
}

local function apply_configuration(config_table)
  local function parse_sections(section_group_name)
    if not config_table[section_group_name] then return end
    for section_name, section in pairs(config_table[section_group_name]) do
      config[section_group_name][section_name] =
          config_table[section_group_name][section_name]
      if type(section) == 'table' then
        for _, component in pairs(section) do
          if type(component) == 'table' and type(component[2]) == 'table' then
            local options = component[2]
            component[2] = nil
            for key, val in pairs(options) do component[key] = val end
          end
        end
      end
    end
  end
  parse_sections('options')
  parse_sections('sections')
  parse_sections('inactive_sections')
  parse_sections('tabline')
end

return {config = config, apply_configuration = apply_configuration}
