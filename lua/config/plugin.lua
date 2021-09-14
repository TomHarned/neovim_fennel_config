local _2afile_2a = "plugin.fnl"
local _2amodule_name_2a = "config.plugin"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local a, nvim, packer, util = autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("packer"), autoload("config.util")
do end (_2amodule_locals_2a)["a"] = a
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["packer"] = packer
_2amodule_locals_2a["util"] = util
local function safe_require_plugin_config(name)
  local ok_3f, val_or_err = pcall(require, ("config.plugin." .. name))
  if not ok_3f then
    return print(("config error: " .. val_or_err))
  else
    return nil
  end
end
_2amodule_locals_2a["safe-require-plugin-config"] = safe_require_plugin_config
local function use(...)
  local pkgs = {...}
  local function _2_(use0)
    for i = 1, a.count(pkgs), 2 do
      local name = pkgs[i]
      local opts = pkgs[(i + 1)]
      do
        local _3_ = opts.mod
        if _3_ then
          safe_require_plugin_config(_3_)
        else
        end
      end
      use0(a.assoc(opts, 1, name))
    end
    return nil
  end
  return packer.startup(_2_)
end
_2amodule_locals_2a["use"] = use
return use("wbthomason/packer.nvim", {}, "Olical/aniseed", {branch = "develop"}, "Olical/conjure", {branch = "master", mod = "conjure"}, "nvim-lua/plenary.nvim", {}, "nvim-telescope/telescope.nvim", {requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"}, mod = "telescope"}, "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate", mod = "treesitter"}, "neovim/nvim-lspconfig", {mod = "lspconfig"}, "hrsh7th/nvim-cmp", {requires = {"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp", "PaterJason/cmp-conjure"}, mod = "cmp"}, "nvim-neorg/neorg", {mod = "neorg", requires = {"plenary.nvim"}}, "jpalardy/vim-slime", {}, "projekt0n/github-nvim-theme", {mod = "theme"}, "folke/tokyonight.nvim", {mod = "theme"}, "shaunsingh/nord.nvim", {mod = "theme"}, "glepnir/zephyr-nvim", {mod = "theme"}, "romgrk/doom-one.vim", {}, "guns/vim-sexp", {mod = "sexp"}, "tpope/vim-sexp-mappings-for-regular-people", {mod = "sexp"}, "tpope/vim-repeat", {mod = "sexp"}, "tpope/vim-surround", {mod = "sexp"})