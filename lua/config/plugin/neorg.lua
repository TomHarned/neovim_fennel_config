local _2afile_2a = ".config/nvim/fnl/config/plugin/neorg.fnl"
local _2amodule_name_2a = "config.plugin.neorg"
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
local neorg, nvim = autoload("neorg"), autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["neorg"] = neorg
_2amodule_locals_2a["nvim"] = nvim
return neorg.setup({load = {["core.defaults"] = {}, ["core.keybinds"] = {config = {default_keybinds = true, neorg_leader = "<Leader>o"}}, ["core.norg.concealer"] = {}, ["core.norg.dirman"] = {config = {my_workspaces = "~/neorg"}}}})