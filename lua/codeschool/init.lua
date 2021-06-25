local lush = require("lush")
local base = require("codeschool.base")
local plugins = require("codeschool.plugins.highlights")
local languages = require("codeschool.languages")

local specs = {base, languages, plugins}
local spec = lush.merge(specs)

return spec
