local present, lsp_installer = pcall(require, "nvim-lsp-installer")

if not present then
	return
end

-- local coq = require("plugins.config.coq")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    -- local opts = coq.lsp_ensure_capabilities({})
    -- local opts = {}
		local opts = {
			capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
		}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

		if server.name == "sumneko_lua" then
			local sumneko_lua_config = require("plugins.config.lsp.sumneko_lua")
			opts = vim.tbl_deep_extend("force", sumneko_lua_config, opts)
		end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
