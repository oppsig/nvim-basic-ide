--[[
local status_ok, urlview = pcall(require, "urlview")
if not status_ok then
  return
end

urlview.setup({
  -- custom configuration options --
})
]]

local M = {
  "axieax/urlview.nvim",
  commit = "b183133fd25caa6dd98b415e0f62e51e061cd522",
  event = "VeryLazy",
}

function M.config()
  require("urlview").setup {}
end

return M
