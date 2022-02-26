-- Telescope
local map = vim.api.nvim_set_keymap

--Keymapping
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = false})
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = false})
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = false})
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = false})
