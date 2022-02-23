-- This file contains all plugins should be installed on this device.
local plugins = {
	{
		name = "packer",
		packer = {"wbthomason/packer.nvim"}
 	},
	{
		name = "dracula",
		packer = {"dracula/vim", as = "dracula"}
	}
}

return plugins
