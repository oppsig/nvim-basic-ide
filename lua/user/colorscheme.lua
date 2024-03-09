--[[
I like gruvbox better so deactivated this.
local M = {
  "LunarVim/darkplus.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}
]]

local M = {
  "ellisonleao/gruvbox.nvim",
  commit = "6d409ee8af4e84d2327b4b5856f843b97a85a567",
  lazy = false,
  priority = 1000,
}

M.name = "gruvbox"

function M.config()
  vim.cmd.colorscheme "gruvbox"
end

return M
