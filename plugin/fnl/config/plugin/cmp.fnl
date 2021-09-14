(module config.plugin.cmp
  {autoload {nvim aniseed.nvim
             cmp cmp}})

(def- cmp-src-menu-items
  {:buffer "buff"
   :conjure "conj"
   :nvim_lsp "lsp"})

(def- cmp-srcs
  [{:name :nvim_lsp}
   {:name :conjure}
   {:name :buffer}])

;; Setup cmp with desired settings
(cmp.setup {:formatting
            {:format (fn [entry item]
                       (set item.menu (or (. cmp-src-menu-items entry.source.name) ""))
                       item)}
            ;; this setting allows you to trigger autocomplete using "Tab"
            :completion {:autocomplete false}
            :mapping {:<S-Tab> (cmp.mapping.select_prev_item)
                      :<CR> (cmp.mapping.select_next_item)
                      :<C-d> (cmp.mapping.scroll_docs (- 4))
                      :<C-f> (cmp.mapping.scroll_docs 4)
                      ;; The complete button is what will trigger the popup
                      ;; when autocomplete is set to false
                      :<Tab> (cmp.mapping.complete)
                      :<C-e> (cmp.mapping.close)
                      :<Space> (cmp.mapping.confirm {:behavior cmp.ConfirmBehavior.Insert
                                                  :select true})}
            :sources cmp-srcs})



