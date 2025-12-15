local M = {}
local ui_instances = {}

function M.register(bufnr, ui_instance)
  ui_instances[bufnr] = ui_instance
end

function M.unregister(bufnr)
  ui_instances[bufnr] = nil
end

function M.get(bufnr)
  return ui_instances[bufnr]
end

return M
