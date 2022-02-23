-- Load packer and also install plugins if needed.
require("utils.loadpacker")

-- Load all configs requires in configs folder
local plugins = require("pluginlist")
for _, plugin in pairs(plugins) do
   pcall(require, "plugins.config." .. plugin.name)
end
