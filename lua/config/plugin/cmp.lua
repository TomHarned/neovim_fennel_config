local _2afile_2a = ".config/nvim/fnl/config/plugin/cmp.fnl"
local _2amodule_name_2a = "config.plugin.cmp"
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
local cmp, nvim = autoload("cmp"), autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["cmp"] = cmp
_2amodule_locals_2a["nvim"] = nvim
local cmp_src_menu_items = {buffer = "buff", conjure = "conj", nvim_lsp = "lsp"}
_2amodule_locals_2a["cmp-src-menu-items"] = cmp_src_menu_items
local cmp_srcs = {{name = "nvim_lsp"}, {name = "conjure"}, {name = "buffer"}}
_2amodule_locals_2a["cmp-srcs"] = cmp_srcs
local function _1_(entry, item)
  item.menu = (cmp_src_menu_items[entry.source.name] or "")
  return item
end
return cmp.setup({formatting = {format = _1_}, completion = {autocomplete = false}, mapping = {["<S-Tab>"] = cmp.mapping.select_prev_item(), ["<CR>"] = cmp.mapping.select_next_item(), ["<C-d>"] = cmp.mapping.scroll_docs(( - 4)), ["<C-f>"] = cmp.mapping.scroll_docs(4), ["<Tab>"] = cmp.mapping.complete(), ["<C-e>"] = cmp.mapping.close(), ["<Space>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Insert, select = true})}, sources = cmp_srcs})