local M = {
  "amitds1997/remote-nvim.nvim",
  version = "*",
  dependencies = {
       "nvim-lua/plenary.nvim", -- For standard functions
       "MunifTanjim/nui.nvim", -- To build the plugin UI
       "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
   },
  event = "VeryLazy",
  config = true,
}

function M.config()
  require("remote-nvim").setup {
  }
end

return M
