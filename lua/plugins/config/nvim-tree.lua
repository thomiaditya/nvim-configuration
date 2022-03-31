-- Nvim tree
require'nvim-tree'.setup {
  ignore_ft_on_setup = {"dashboard"},
}

vim.api.nvim_set_keymap("n", "<leader>]", " :NvimTreeToggle<CR>", {noremap = true})
