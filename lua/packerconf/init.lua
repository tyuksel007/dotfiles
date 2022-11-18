return require("packer").startup(function(use)

	use ("wbthomason/packer.nvim")
	use ("gruvbox-community/gruvbox")
	use ("EdenEast/Nightfox.nvim")
	use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
	use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")



end)
