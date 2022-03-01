-- Nvim tree
require'nvim-tree'.setup {
	view = {
		side = "right",
	}
}

vim.api.nvim_set_keymap("n", "<leader>]", " :NvimTreeToggle<CR>", {noremap = true})
