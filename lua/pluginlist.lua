-- This file contains all plugins should be installed on this device.
local plugins = {
	{
		name = "impatient",
		packer = {"lewis6991/impatient.nvim"}
	},

	{
		name = "packer",
		packer = {"wbthomason/packer.nvim"}
 	},

	{
		name = "dracula",
		packer = {"dracula/vim", as = "dracula"}
	},

	{
		name = "telescope",
		packer = {"nvim-telescope/telescope.nvim", requires = {"nvim-lua/plenary.nvim"}}
	},

	{
		name = "nvim-tree",
		packer = {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons"}}
	},

	{
		name = "autopairs",
		packer = {"windwp/nvim-autopairs"}
	},

-- 	{
-- 		name = "github-copilot",
-- 		packer = {"github/copilot.vim"}
-- 	},
 
	{
		name = "nvim-gps",
		packer = {"SmiteshP/nvim-gps", requires = "nvim-treesitter/nvim-treesitter"}
	},

	{
		name = "gitsigns",
		packer = {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}
	},

	{
		name = "feline",
		packer = {"feline-nvim/feline.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}}
	},

	{
		name = "treesitter",
		packer = {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	},

	{
		name = "dashboard",
		packer = {"glepnir/dashboard-nvim"}
	},

	{
		name = "coq",
		packer = {"ms-jpq/coq_nvim", branch = "coq", requires = {{"ms-jpq/coq.artifacts", branch = "artifacts"}, {"ms-jpq/coq.thirdparty", branch = "3p"}}}
	},

	{
		name = "lspconfig",
		packer = {"neovim/nvim-lspconfig", requires = {"williamboman/nvim-lsp-installer"}}
	},

}

return plugins
