-- Keybindings (VSCode-like)

local map = vim.keymap.set

-- Common operations
map('n', '<C-s>', ':w<CR>', { desc = 'Save file' })
map('i', '<C-s>', '<Esc>:w<CR>a', { desc = 'Save file' })
map('n', '<C-q>', ':q<CR>', { desc = 'Quit' })
map('n', '<C-f>', ':Telescope live_grep<CR>', { desc = 'Find text' })
map('n', '<C-p>', ':Telescope find_files<CR>', { desc = 'Find files' })
map('n', '<C-b>', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
map('n', '<C-t>', ':Copilot chat<CR>', { desc = 'Open Copilot Chat' }) -- Added Copilot Chat shortcut

-- Editor group management (splits)
map('n', '<C-\\>', ':vsplit<CR>', { desc = 'Split vertically' })
map('n', '<C-_>', ':split<CR>', { desc = 'Split horizontally' })
map('n', '<C-x>', ':close<CR>', { desc = 'Close editor tab' }) -- Changed from C-w to C-x to avoid conflicts

-- Code navigation
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition' })
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', { desc = 'Go to references' })
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', { desc = 'Go to implementation' })
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { desc = 'Show hover information' })

-- Multiple cursors (using visual mode and macros as a workaround)
map('v', '<C-d>', 'y`>p', { desc = 'Duplicate selection' })

-- Navigate between editor groups
map('n', '<C-h>', '<C-w>h', { desc = 'Navigate to left pane' })
map('n', '<C-j>', '<C-w>j', { desc = 'Navigate to bottom pane' })
map('n', '<C-k>', '<C-w>k', { desc = 'Navigate to top pane' })
map('n', '<C-l>', '<C-w>l', { desc = 'Navigate to right pane' })

-- Code folding
map('n', '<C-[>', 'za', { desc = 'Toggle fold' })

-- Buffer navigation (like tabs in VSCode)
map('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })
map('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })

-- Formatting
map('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { desc = 'Format document' })

-- Terminal
map('n', '<C-`>', ':terminal<CR>', { desc = 'Open terminal' })
map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Indentation
map('v', '<', '<gv', { desc = 'Unindent line' })
map('v', '>', '>gv', { desc = 'Indent line' })

-- Comment toggle (using Comment.nvim standard bindings to avoid conflicts)
-- Instead of <C-/> which causes conflicts
map('n', 'gcc', ':lua require("Comment.api").toggle.linewise.current()<CR>', { desc = 'Toggle comment on current line' })
map('v', 'gc', ':lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', { desc = 'Toggle comment on selection' })

-- GitHub Copilot
map('i', '<C-J>', 'copilot#Accept("<CR>")', { expr = true, silent = true, desc = 'Accept Copilot suggestion' })
map('i', '<C-H>', 'copilot#Previous()', { expr = true, silent = true, desc = 'Previous Copilot suggestion' })
map('i', '<C-L>', 'copilot#Next()', { expr = true, silent = true, desc = 'Next Copilot suggestion' })
