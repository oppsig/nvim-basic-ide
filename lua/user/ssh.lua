-- create ft au group.
local au_ft = vim.api.nvim_create_augroup("ft", { clear = true })

-- ssh/config
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*/ssh/config",
  callback = function()
    --vim.api.nvim_set_filetype = "sshconfig" 
    vim.api_nvim_echo("test")
  end,
  group = au_ft,
})

-- local bash additions
vim.api.nvim_create_autocmd("BufRead", {
  pattern = "*/.localrc",
  command = "setfiletype bash",
  --callback = function()
  --  vim.cmd([[setfiletype bash]])
  --end,
  group = au_ft,
})

-- termclose 
vim.api.nvim_create_autocmd("TermClose", {
  pattern = "*",
  command = "NvimTreeRefresh"
})
