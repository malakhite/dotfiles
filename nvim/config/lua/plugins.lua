vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function ()
	use {'wbthomason/packer.nvim'}
	use {'neovim/nvim-lspconfig'}
	use {'nvim-treesitter/nvim-treesitter'}
	-- use {'junegunn/fzf', run = fn['fzf#install']}
	-- use {'junegunn/fzf.vim'}
end)