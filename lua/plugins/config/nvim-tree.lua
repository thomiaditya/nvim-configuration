-- Nvim tree
require'nvim-tree'.setup {
	view = {
		side = "left",
		open_on_tab = true,
		auto_close = true,
	}
}

vim.api.nvim_set_keymap("n", "<leader>]", " :NvimTreeToggle<CR>", {noremap = true})
