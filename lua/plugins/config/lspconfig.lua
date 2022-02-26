-- LSP Config Neovim

local present, _ = pcall(require, "lspconfig")
if not present then
	return
end
