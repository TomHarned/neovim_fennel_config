(module config.plugin.neorg
  {autoload {nvim aniseed.nvim
             neorg neorg
             }})

(neorg.setup 
  {:load {:core.defaults {}
   :core.keybinds {:config
                    {:default_keybinds true :neorg_leader "<Leader>o"}}
   :core.norg.concealer {}
   :core.norg.dirman {:config
                      {:my_workspaces "~/neorg"}}}}) 
