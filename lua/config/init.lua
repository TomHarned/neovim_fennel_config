local _2afile_2a = "init.fnl"
local _2amodule_name_2a = "config.init"
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
local core, nvim, str, util = autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("aniseed.string"), autoload("config.util")
do end (_2amodule_locals_2a)["core"] = core
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["str"] = str
_2amodule_locals_2a["util"] = util
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.g.mapleader = " "
nvim.g.maplocalleader = " m"
vim.g.slime_target = "neovim"
vim.g.slime_paste_file = "$HOME/.slime_paste"
nvim.set_keymap("n", "<leader>ss", "<Plug>SlimeParagraphSend", {noremap = false})
nvim.set_keymap("x", "<leader>ss", "<Plug>SlimeRegionSend", {noremap = false})
nvim.set_keymap("n", "<leader>w", "<C-w>", {noremap = true})
nvim.set_keymap("n", "<leader>h", ":noh<CR>", {noremap = true})
nvim.set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true})
nvim.set_keymap("t", "M-=", "<Esc>", {noremap = true})
nvim.set_keymap("n", "<leader>bp", ":bp<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>bn", ":bn<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>ls", ":ls<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>bs", ":new<CR>", {noremap = true})
do
  local options = {completeopt = "menuone,noselect", compatible = false, modifiable = true, hidden = true, swapfile = false, number = true, autoindent = true, syntax = on, cc = "79", wildmode = "longest,list", tabstop = 8, softtabstop = 0, splitbelow = true, splitright = true, expandtab = true, ruler = true, shiftwidth = 4, smarttab = true, ignorecase = true, smartcase = true, path = "**", clipboard = "unnamedplus"}
  for option, value in pairs(options) do
    core.assoc(nvim.o, option, value)
  end
end
return require("config.plugin")