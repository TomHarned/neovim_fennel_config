(module config.plugin.neorg
  {autoload {nvim aniseed.nvim
             neorg neorg
             }})

;; This is not working yet
;; (neorg.setup
;;    {:core
;;      {:defaults {}
;;       :norg 
;;        {:concealer {}
;;         :dirman
;;          {:config
;;           {:workspaces {:my_workspace "~/neorg"}}}}}})

(set neorg.config
   {:core
     {:defaults ""
      :norg 
       {:concealer {}
        :dirman
         {:config
          {:workspaces {:my_workspace "~/neorg"}}}}}})
