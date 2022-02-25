-- Nvim tree
require'nvim-tree'.setup {
	view = {
		side = "right",
	}
}

vim.api.nvim_set_keymap("n", "<C-n>", " :NvimTreeToggle<CR>", {noremap = true})
