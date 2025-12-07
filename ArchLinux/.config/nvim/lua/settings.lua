-- Basic settings for Neovim

vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = true -- Highlight current line
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.shiftwidth = 2 -- Size of indents
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.wrap = false -- Don't wrap lines
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true -- Case sensitive if search contains capitals
vim.opt.termguicolors = true -- True color support
vim.opt.mouse = 'a' -- Enable mouse in all modes
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.breakindent = true -- Enable indent on wrapped lines
vim.opt.undofile = true -- Save undo history
vim.opt.signcolumn = 'yes' -- Always show sign column
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease timeout length
vim.opt.swapfile = false -- Don't use swapfile

-- Disable providers you don't need
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0 -- Disable if you don't need Node.js integration

-- Set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- User information
vim.g.username = "ashwnn" -- Set your username
vim.g.useremail = "ashwincharath@gmail.com" -- Set your email

-- Set up time display format
vim.g.timeformat = "%Y-%m-%d %H:%M:%S"
