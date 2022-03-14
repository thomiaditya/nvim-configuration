-- Load packer and also install plugins if needed.
require("utils.loadpacker")

-- Spesify all of plugin configs that need to be loaded in runtime. You can find config file on lua/plugins/config
local configs = {
	-- Theme
	"tokyonight-theme",

	-- Plugins
	"telescope", -- Telescope.nvim is a highly extendable fuzzy finder over lists.
	"dashboard", -- A minimalist dashboard for Neovim, inspired by doom-emacs.
  "treesitter",
	"barbar",
	"nvim-cmp",
	"autopairs",
	"indent-blankline",
	"lspconfig",
	"nerdcommenter",
	"nvim-tree",
	"gitsigns",
	"feline",
}

-- Then do loop for all configs spesified above.
for _, config in pairs(configs) do
 	local err, _ = pcall(require, "plugins.config." .. config)
	if not err then
		print("Error: " .. config)
	end
end
