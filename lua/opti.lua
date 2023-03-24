local M = {}
local ns = vim.api.nvim_create_namespace("opti")
local plugin_loaded = false

local config = {
    enable_on_startup = true
}

local file = io.open("out.log", "a")
io.output(file)
io.write("\n")
io.flush()


local start_registering = function()
    vim.on_key(function(key)
        io.write(vim.fn.keytrans(key))
        io.flush()
    -- vim.notify(vim.fn.keytrans(key))
  end, ns)
  plugin_loaded = true
end

M.setup = function(opt)
  if config.enable_on_startup then start_registering() end
end

return M
