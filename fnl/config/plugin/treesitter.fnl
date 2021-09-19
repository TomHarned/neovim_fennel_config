(module config.plugin.treesitter
  {autoload {treesitter nvim-treesitter.configs
            parser_configs nvim-treesitter.parsers}})

;; This creaetes a local
(def- parser (parser_configs.get_parser_configs))

;; set looks like it mutates state??
(set parser.norg
   {:install_info {
     :url "~/tree-sitter-norg"
     :files ["src/parser.c" "src/scanner.cc"]
   }})

(treesitter.setup {:highlight {:enable true}
                   :indent {:enable true}
                   :ensure_installed ["clojure" "python" "norg"]})

