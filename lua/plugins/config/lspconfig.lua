-- LSP Config Neovim

local present, _ = pcall(require, "lspconfig")

if not present then
	return
end

require("plugins.config.lsp.lsp-installer")
