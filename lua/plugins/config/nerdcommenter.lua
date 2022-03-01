-- NerdCommenter

local g = vim.g

g.NERDCreateDefaultMappings = 1

-- Add spaces after comment delimiters by default
g.NERDSpaceDelims = 1

-- Use compact syntax for prettified multi-line comments
g.NERDCompactSexyComs = 1

-- Align line-wise comment delimiters flush left instead of following code indentation
g.NERDDefaultAlign = 'left'

-- Set a language to use its alternate delimiters by default
g.NERDAltDelims_java = 1

-- Allow commenting and inverting empty lines (useful when commenting a region)
g.NERDCommentEmptyLines = 1

-- Enable trimming of trailing whitespace when uncommenting
g.NERDTrimTrailingWhitespace = 1

-- Enable NERDCommenterToggle to check all selected lines is commented or not 
g.NERDToggleCheckAllLines = 1

vim.api.nvim_set_keymap("n", "<leader>/", "<Plug>NERDCommenterToggle", {noremap = false})
vim.api.nvim_set_keymap("v", "<leader>/", "<Plug>NERDCommenterToggle", {noremap = false})
