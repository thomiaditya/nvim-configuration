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
		name = "indent-blankline",
		packer = {"lukas-reineke/indent-blankline.nvim"}
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
		name = "lspconfig",
		packer = {"neovim/nvim-lspconfig", requires = {"williamboman/nvim-lsp-installer"}}
	},

	{
		name = "prettier",
		packer = {"prettier/vim-prettier", branch = "release/1.x", run = "yarn install"}
	},

	{
		name = "copilot",
		packer = {"github/copilot.vim", branch = "release"}
	},

	{
		name = "surround",
		packer = {"tpope/vim-surround"}
	},

	{
		name = "vim-multiple-cursors",
		packer = {"terryma/vim-multiple-cursors"}
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
		name = "vim-puppet",
		packer = {"rodjek/vim-puppet"}
	},

	{
		name = "dashboard",
		packer = {"glepnir/dashboard-nvim"}
	},

	{
		name = "barbar",
		packer = {"romgrk/barbar.nvim", requires = {"kyazdani42/nvim-web-devicons"}}
	},

}

return plugins
