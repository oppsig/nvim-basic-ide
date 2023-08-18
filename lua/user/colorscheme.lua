--[[
local M = {
  "folke/tokyonight.nvim",
  commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}
]]

local M = {
  "ellisonleao/gruvbox.nvim",
  commit = "6d409ee8af4e84d2327b4b5856f843b97a85a567",
  lazy = false,
  priority = 1000,
}

M.name = "tokyonight-night"
function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
