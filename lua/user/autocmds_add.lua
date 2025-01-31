-- Automatically close tab/vim when nvim-tree is the last window in the tab
-- vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    local line_count = vim.api.nvim_buf_line_count(0)
    if line_count >= 5000 then
      vim.cmd "IlluminatePauseBuf"
    end
  end,
})

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

-- toggle nvim-tree when nvim started with no arguments or a folder.
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      local api = require("nvim-tree.api")
      api.tree.toggle({ path = vim.fn.argc() })
    elseif vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv()[1]) ~= 0 then
      local api = require("nvim-tree.api")
      api.tree.toggle()
    end
  end
})
