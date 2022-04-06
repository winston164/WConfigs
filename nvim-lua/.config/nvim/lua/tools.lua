
local M = {}

function M.makeScratch()
  vim.api.nvim_command('enew')
end

return M
