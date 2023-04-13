local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print("Installing packer close and repoen Neovim...")
	vim.cmd [[packadd packer.nvim]]
	return true
end

-- Autocommand that reloads neovim whenever you save the plugins.l  ua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
        return
end



return packer.startup(function(user)
	use{"wbthomason/packer.nvim"}	
        use "nvim-lua/plenary.nvim"             -- Library used by other libraries
        use "windwp/nvim-autopairs"             -- Pairs automatillay braquets an quotes, etc
        --use {                                   -- Improves commenting
        --    'numToStr/Comment.nvim',
        --    config = function()
        --        require('Comment').setup()
        --    end
        --}
        --use  "kyazdani42/nvim-web-devicons" -- armonize color icons
        use "kyazdani42/nvim-tree.lua"          -- like neerdtree
        use "akinsho/bufferline.nvim"           -- better tabs
        use "nvim-lualine/lualine.nvim"         -- fast, easy to configure status line
        use "ahmedkhalf/project.nvim"           -- manage projects
        use "lewis6991/impatient.nvim"          -- improves neovim startup time
        use "lukas-reineke/indent-blankline.nvim" -- addes indent blankline
        -- ColorSchemes
        -- Colorschemes
        use  "folke/tokyonight.nvim" 
        --use  "lunarvim/darkplus.nvim"

        --        -- LSP
        use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
        use 'nvim-treesitter/nvim-treesitter' --Treesitter 

        use 'ray-x/go.nvim'


--        use "williamboman/mason.nvim" --Simple to use languge server installer
--        use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
--
--        use "williamboman/mason-lspconfig.nvim"
--
--        -- CMP
--        use 'hrsh7th/nvim-cmp'
--        use 'hrsh7th/cmp-nvim-lsp'
--        use 'L3MON4D3/LuaSnip'
--	use "hrsh7th/cmp-buffer"
--	use "hrsh7th/cmp-path"
--
--	use  {'VonHeikemen/lsp-zero.nvim', branch = 'v2.x' }


	-- COC
	 use {'neoclide/coc.nvim', branch = 'release'}
        -- Automatically set up your configuration after clonin  g packer.nvim
        -- Put this at the end after all plugins
        if PACKER_BOOTSTRAP then
          require("packer").sync()
        end


      end)
