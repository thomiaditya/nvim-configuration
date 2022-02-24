-- This file contains all plugins should be installed on this device.
local plugins = {
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
		name = "impatient",
		packer = {"lewis6991/impatient.nvim"}
	},
	{
		name = "feline",
		packer = {"feline-nvim/feline.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}}
	},
	{
		name = "treesitter",
		packer = {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	},
}

return plugins
