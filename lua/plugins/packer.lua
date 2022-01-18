-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local use = require('packer').use
return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
  use 'tpope/vim-surround'
  -- UI to select things (files, grep results, open buffers...)
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'joshdick/onedark.vim' -- Theme inspired by Atom
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  -- use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "rafamadriz/friendly-snippets" -- Snippet repo
  -- External sources for LSP: e.g. flake8
  use({ "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({})
    end,
    requires = {"nvim-lua/plenary.nvim"}
  })
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use {'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons'}

  -- COLORSCHEMES ----------------------
  use 'danilo-augusto/vim-afterglow'
  use 'AlessandroYorba/Alduin'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'ulwlu/elly.vim'
  use {'catppuccin/nvim',
    as = 'catppuccin'
  }
  use 'shaunsingh/moonlight.nvim'
  use 'shaunsingh/nord.nvim'
  use 'shaunsingh/solarized.nvim'
  use 'shaunsingh/seoul256.nvim'
  use "rebelot/kanagawa.nvim"
  --------------------------------------

  use 'Vimjas/vim-python-pep8-indent'
  use 'MathSquared/vim-python-sql'
  use 'bronson/vim-trailing-whitespace'
  use 'lervag/vimtex'
  use {'iamcco/markdown-preview.nvim',
    ft = {'markdown'},
    run = 'cd app && yarn install',
    cmd = 'MarkdownPreview'
  }
  use {"folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      }
    end
  }
  use 'ray-x/lsp_signature.nvim'
  -- use {'AckslD/nvim-pytrize.lua',
  --   config = 'require("pytrize").setup()'
  -- }
end)
