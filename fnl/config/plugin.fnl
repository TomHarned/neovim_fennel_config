(module config.plugin
  {autoload {nvim aniseed.nvim
             a aniseed.core
             util config.util
             packer packer}})

(defn- safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :config.plugin. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name))))))))

;plugins managed by packer
(use
  ;plugin Manager
  :wbthomason/packer.nvim {}
  ;nvim config and plugins in Fennel
  :Olical/aniseed {:branch :develop}
  ;clojure
  :Olical/conjure {:branch :master :mod :conjure}
  ;;plenary - lua functions
  :nvim-lua/plenary.nvim {}
  ;file searching
  :nvim-telescope/telescope.nvim {:requires [:nvim-lua/popup.nvim
                                             :nvim-lua/plenary.nvim]
                                  :mod :telescope}
  ;parsing system
  :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                    :mod :treesitter}
  ;lsp
  :neovim/nvim-lspconfig {:mod :lspconfig}
  ;autocomplete
  :hrsh7th/nvim-cmp {:requires [:hrsh7th/cmp-buffer
                                :hrsh7th/cmp-nvim-lsp
                                :PaterJason/cmp-conjure]
                     :mod :cmp}
 ;; Neorg
 ;; This is not working yetneorg neorg                                  │
 :nvim-neorg/neorg {:mod :neorg
                    :requires [:plenary.nvim]}

 ;; slime 
 :jpalardy/vim-slime {} 

  ;theme
 :projekt0n/github-nvim-theme {:mod :theme}
 :folke/tokyonight.nvim {:mod :theme}
 :shaunsingh/nord.nvim {:mod :theme}
 :glepnir/zephyr-nvim {:mod :theme}
 :romgrk/doom-one.vim {}

 ;; clojure stuff
 ;; I've never been able to get this shit to work
 :guns/vim-sexp {:mod :sexp}
 :tpope/vim-sexp-mappings-for-regular-people {:mod :sexp}
 :tpope/vim-repeat {:mod :sexp}
 :tpope/vim-surround {:mod :sexp}

 ;; I don't think we need this one
 ;;:jaawerth/fennel-nvim {}
 )


