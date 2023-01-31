local Plug = vim.fn['plug#']
vim.call('plug#begin')
-- UI
Plug 'marko-cerovac/material.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'pacha/vem-tabline'
-- LSP
Plug 'glepnir/lspsaga.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'folke/neodev.nvim'

Plug 'nvim-tree/nvim-tree.lua'
Plug 'karb94/neoscroll.nvim'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'mfussenegger/nvim-dap'
Plug 'voldikss/vim-floaterm'
Plug 'lilydjwg/colorizer'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'ethanholz/nvim-lastplace'
Plug 'preservim/nerdcommenter'
Plug 'mhartington/formatter.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/which-key.nvim'
vim.call('plug#end')

require("plugins.hlSearch")
require("plugins.nvimTree")
require("plugins.statusLine")
require("plugins.floaTerm")
require("plugins.neoScroll")
require("plugins.scrollerBar")
require("plugins.indentLine")
require("plugins.colorScheme")
require("plugins.tabLine")
require("plugins.nerdCommneter")
require("plugins.formatter")
require("plugins.tree-sitter")
require('plugins.gitsigns')
require 'nvim-lastplace'.setup()
