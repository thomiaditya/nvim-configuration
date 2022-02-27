-- This file contains all plugins should be installed on this device.

local plugins = {
	-- Core plugins for neovim
	{
		name = "impatient",
		packer = {"lewis6991/impatient.nvim"}
	},

	{
		name = "packer",
		packer = {"wbthomason/packer.nvim"}
 	},

	-- Theme plugins
	{
		name = "dracula",
		packer = {"dracula/vim", as = "dracula"}
	},

	{
		name = "tokyonight-theme",
		packer = {"folke/tokyonight.nvim"}
	},

	-- Managerial plugins
	{
		name = "telescope",
		packer = {"nvim-telescope/telescope.nvim", requires = {"nvim-lua/plenary.nvim"}}
	},

	{
		name = "telescope-file-browser",
		packer = {"nvim-telescope/telescope-file-browser.nvim"}
	},

	{
		name = "nvim-tree",
		packer = {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons"}}
	},

	{
		name = "nvim-gps",
		packer = {"SmiteshP/nvim-gps", requires = "nvim-treesitter/nvim-treesitter"}
	},

	{
		name = "gitsigns",
		packer = {"lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}
	},

	-- Typing plugins
	{
		name = "autopairs",
		packer = {"windwp/nvim-autopairs"}
	},

	{
		name = "nerdcommenter",
		packer = {"preservim/nerdcommenter", }
	},

	{
		name = "lspkind-nvim",
		packer = {"onsails/lspkind-nvim"}
	},

	{
		name = "nvim-cmp",
		packer = {"hrsh7th/nvim-cmp", requires = {"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline"}}
	},

	{
		name = "vsnip",
		packer = {"hrsh7th/cmp-vsnip", requires = {"hrsh7th/vim-vsnip"}}
	},

	{
		name = "coq",
		packer = {"ms-jpq/coq_nvim", branch = "coq", requires = {{"ms-jpq/coq.artifacts", branch = "artifacts"}, {"ms-jpq/coq.thirdparty", branch = "3p"}}}
	},

	{
		name = "lspconfig",
		packer = {"neovim/nvim-lspconfig", requires = {"williamboman/nvim-lsp-installer"}}
	},

	-- Interface plugins
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


}

return plugins
