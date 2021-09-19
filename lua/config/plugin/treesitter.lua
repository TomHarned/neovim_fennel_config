local _2afile_2a = ".config/nvim/fnl/config/plugin/treesitter.fnl"
local _2amodule_name_2a = "config.plugin.treesitter"
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
local parser_configs, treesitter = autoload("nvim-treesitter.parsers"), autoload("nvim-treesitter.configs")
do end (_2amodule_locals_2a)["parser_configs"] = parser_configs
_2amodule_locals_2a["treesitter"] = treesitter
local parser = parser_configs.get_parser_configs()
do end (_2amodule_locals_2a)["parser"] = parser
parser.norg = {install_info = {url = "~/tree-sitter-norg", files = {"src/parser.c", "src/scanner.cc"}}}
return treesitter.setup({highlight = {enable = true}, indent = {enable = true}, ensure_installed = {"clojure", "python", "norg"}})