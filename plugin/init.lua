-- Load packer and also install plugins if needed.
require("utils.loadpacker")

-- Spesify all of plugin configs that need to be loaded in runtime. You can find config file on lua/plugins/config
local configs = {
	"feline",
	"treesitter",
	"nvim-tree",
	"telescope",
}

-- Then do loop for all configs spesified above.
for _, config in pairs(configs) do
	pcall(require, "plugins.config." .. config)
end
