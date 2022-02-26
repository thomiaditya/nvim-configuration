-- Load packer and also install plugins if needed.
require("utils.loadpacker")

-- Spesify all of plugin configs that need to be loaded in runtime. You can find config file on lua/plugins/config
local configs = {
	"dashboard",
	"treesitter",
	"nvim-tree",
	"gitsigns",
	"feline",
	"coq",
	"telescope",
}

-- Then do loop for all configs spesified above.
for _, config in pairs(configs) do
 	local err, _ = pcall(require, "plugins.config." .. config)
	if not err then
		print("Error: " .. config)
	end
end
