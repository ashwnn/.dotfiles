-- init.lua

-- User information with current date/time and username
vim.g.current_date = "2025-03-13 19:40:32"  -- Current date and time
vim.g.username = "ashwnn"                   -- Current username

-- Basic Neovim settings
require('settings')

-- Install and configure plugins
require('plugins')

-- Keymaps
require('keymaps')
