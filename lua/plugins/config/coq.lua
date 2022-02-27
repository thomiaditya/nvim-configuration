-- COQ Completion

vim.g.coq_settings = {
	auto_start = "shut-up",
	display = {
		pum = {
			x_max_len = 100
		}
	}
}


-- We require this in lspconfig
local coq = require("coq")

vim.g.coq_settings = { keymap = { recommended = false } }

return coq
