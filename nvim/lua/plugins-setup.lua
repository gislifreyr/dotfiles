-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer manages itself
  use("wbthomason/packer.nvim")

  use("folke/tokyonight.nvim") -- preferred colorscheme
  use("szw/vim-maximizer") -- maximizes and restores current window
  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
  use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)
  use("numToStr/Comment.nvim") -- commenting with gc
  use("nvim-tree/nvim-tree.lua") -- file explorer
  use("nvim-tree/nvim-web-devicons") -- icons
  use("nvim-lualine/lualine.nvim") -- statusline

  if packer_bootstrap then
    require("packer").sync()
  end
end)
