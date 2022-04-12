local nightfox = require("nightfox"); -- Require the NightFox module

nightfox.setup({
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/nightfox"
  }
}); -- Setup the NightFox environment

vim.cmd("colorscheme nightfox"); -- Set the NightFox theme

return nightfox; -- Return the NightFox module
