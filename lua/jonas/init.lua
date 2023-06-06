require("jonas.remap")
require("jonas.set")
require("autoclose").setup({
   keys = {
      ["$"] = { escape = true, close = true, pair = "$$"},
   },
})
require('nvim-highlight-colors').setup {}


