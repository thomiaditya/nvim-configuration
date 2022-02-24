-- Telescope
local map = vim.api.nvim_set_keymap

--Keymapping
map("n", "<leader>tf", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = false})
map("n", "<leader>tg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = false})
map("n", "<leader>tb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = false})
map("n", "<leader>th", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = false})
