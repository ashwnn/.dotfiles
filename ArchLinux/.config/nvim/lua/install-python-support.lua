-- ~/.config/nvim/lua/install-python-support.lua

local function setup_python_provider()
  -- Disable providers you don't need
  vim.g.loaded_perl_provider = 0
  vim.g.loaded_ruby_provider = 0
  
  -- Set specific Python3 path if available
  if vim.fn.executable('/usr/bin/python3') == 1 then
    vim.g.python3_host_prog = '/usr/bin/python3'
  end
  
  -- Install pynvim if needed
  vim.cmd([[
    if !has('python3')
      echom "Please install pynvim for Python3 support: pip3 install --user pynvim"
    endif
  ]])
end

return {
  setup = setup_python_provider
}
