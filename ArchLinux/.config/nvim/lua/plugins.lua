-- Plugins configuration

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color scheme
  use 'navarasu/onedark.nvim'

  -- Language Server Protocol
  use {
    'neovim/nvim-lspconfig',
    requires = {
      -- LSP completion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      -- LSP UI improvements
      'nvimdev/lspsaga.nvim',
      -- Mason for automatic LSP installation
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    }
  }

  -- Syntax highlighting with Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- for file icons
    }
  }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
    }
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Git integration
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'

  -- Autopairs
  use 'windwp/nvim-autopairs'

  -- Comment
  use 'numToStr/Comment.nvim'

  -- Indent guides
  use {
    'lukas-reineke/indent-blankline.nvim',
    tag = 'v3.*', -- Make sure to use version 3
  }
  -- TypeScript specific
  use 'jose-elias-alvarez/typescript.nvim'

  -- Wakatime for tracking coding metrics
  use 'wakatime/vim-wakatime'

  -- GitHub Copilot
  use 'github/copilot.vim'

  -- ESLint
  use 'MunifTanjim/eslint.nvim'

  -- Which key (shows keybinding help)
  use 'folke/which-key.nvim'

  -- Bufferline
  use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }

  -- Markdown preview
  use {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
  }
end)
