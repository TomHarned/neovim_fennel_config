(module config.init
  {autoload {core aniseed.core
             nvim aniseed.nvim
             util config.util
             str aniseed.string}})

;generic mapping leaders configuration
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader " m")

;; set up slime
(set vim.g.slime_target "neovim")
(set vim.g.slime_paste_file "$HOME/.slime_paste")
(nvim.set_keymap :n :<leader>ss :<Plug>SlimeParagraphSend {:noremap false})
(nvim.set_keymap :x :<leader>ss :<Plug>SlimeRegionSend {:noremap false})

;; TODO: factor the key remappings into their own file
;; Custom key mappings
;; spacemacs style window nav
(nvim.set_keymap :n :<leader>w :<C-w> {:noremap true})
(nvim.set_keymap :n :<leader>h ::noh<CR> {:noremap true})
(nvim.set_keymap :t :<Esc> :<C-\><C-n> {:noremap true})
(nvim.set_keymap :t :M-= :<Esc> {:noremap true})

;; Remap basic buffer Nav
(nvim.set_keymap :n :<leader>bp ::bp<CR> {:noremap true})
(nvim.set_keymap :n :<leader>bn ::bn<CR> {:noremap true})
(nvim.set_keymap :n :<leader>ls ::ls<CR> {:noremap true})

;; Create a scratch buffer
(nvim.set_keymap :n :<leader>bs ::new<CR> {:noremap true})

;don't wrap lines
;;(nvim.ex.set :nowrap)
;sets a nvim global options
(let [options
      {;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;more global settings
       :compatible false
       :modifiable true
       :hidden true
       :swapfile false
       :number true
       :autoindent true
       :syntax on
       ;; column width
       :cc "79"
       :wildmode "longest,list"
       :tabstop 8
       :softtabstop 0
       ;open new horizontal panes on down pane
       :splitbelow true
       ;open new vertical panes on right pane
       :splitright true
       ;enable highlighting search
       ;; tabs as spaces
       :expandtab true
       :ruler true
       :shiftwidth 4
       :smarttab true
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       :path "**"
       ;shared clipboard with linux
       :clipboard "unnamedplus"}]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))


;import plugin.fnl
(require :config.plugin)

;;(vim.cmd "colorscheme doom-one")
