-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  "navarasu/onedark.nvim", 
	  as="onedark",
	  config = function()
		  require('onedark').setup{
			  style = 'darker'
		  }
		  require('onedark').load()
	  end
  })
  use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
		  'kyazdani42/nvim-web-devicons', -- optional, for file icon
	  },
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use{"akinsho/toggleterm.nvim"}

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'neovim/nvim-lspconfig'  -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer' -- Simple to use language server installer
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer' -- Buffer completions
  use 'hrsh7th/cmp-path' -- Path completions
  use 'hrsh7th/cmp-cmdline' -- Cmdline completions
  use 'onsails/lspkind-nvim'  
  use 'L3MON4D3/LuaSnip' -- Snippet Engine
  use 'saadparwaiz1/cmp_luasnip' -- Snippet completions

end)

