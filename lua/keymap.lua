local map = vim.api.nvim_set_keymap

map("n", "<A-j>", " :m +1<CR>h", {noremap = false})
map("n", "<A-k>", " :m -2<CR>h", {noremap = false})
