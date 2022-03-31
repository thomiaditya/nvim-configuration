-- Nvim tree
local tree = require'nvim-tree'

tree.setup {
  ignore_ft_on_setup = {"dashboard"},
}

vim.api.nvim_set_keymap("n", "<leader>]", " :NvimTreeToggle<CR>", {noremap = true})

return tree
