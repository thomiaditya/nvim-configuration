-- Telescope
local map = vim.api.nvim_set_keymap

require("telescope").load_extension "file_browser"

--Keymapping
map("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = false})
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = false})
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = false})
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = false})
map("n", "<leader>fb", " :Telescope file_browser<CR>", {noremap = true})
