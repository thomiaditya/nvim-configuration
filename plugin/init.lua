-- Load packer and also install plugins if needed.
require("utils.loadpacker")

-- Spesify all of plugin configs that need to be loaded in runtime. You can find config file on lua/plugins/config
local configs = {
	-- Theme
	"tokyonight-theme",

	-- Plugins
	"telescope", -- Telescope.nvim is a highly extendable fuzzy finder over lists.
	"dashboard", -- A minimalist dashboard for Neovim, inspired by doom-emacs.
  "treesitter", -- Treesitter is a plugin for Neovim that provides syntax-aware indentation and navigation.
	"barbar", -- A plugin for Neovim that provides a bar at the top of the screen.
	"nvim-cmp", -- A plugin for Neovim that provides a command-mode prompt.
	"autopairs", -- A plugin for Neovim that provides automatic pair insertion.
	"indent-blankline", -- A plugin for Neovim that provides automatic indentation.
	"lspconfig", -- A plugin for Neovim that provides LSP support.
	"nerdcommenter", -- A plugin for Neovim that provides comment insertion.
	"nvim-tree", -- A plugin for Neovim that provides a tree view.
	"gitsigns", -- A plugin for Neovim that provides git commit signatures.
	"feline",	-- A plugin for Neovim that provides a tree view.
}

-- Then do loop for all configs spesified above.
for _, config in pairs(configs) do
 	local err, _ = pcall(require, "plugins.config." .. config)
	if not err then
		print("Error: " .. config)
	end
end
