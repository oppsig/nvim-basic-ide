local status_ok, urlview = pcall(require, "urlview")
if not status_ok then
  return
end

urlview.setup({
  -- custom configuration options --
})
