return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[









                 ▄▄██████████▄▄             
                 ▀▀▀   ██   ▀▀▀             
         ▄██▄   ▄▄████████████▄▄   ▄██▄     
       ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   
      ████▄ ▄███▀              ▀███▄ ▄████  
     ███▀█████▀▄████▄      ▄████▄▀█████▀███ 
     ██▀  ███▀ ██████      ██████ ▀███  ▀██ 
      ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  
         ███           ▀▀           ███     
         ██████████████████████████████     
     ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ 
     ███  ███ ███   ██    ██   ███▄███  ███ 
     ▀██▄████████   ██    ██   ████████▄██▀ 
      ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  
       ▀███▄  ▀███████    ███████▀  ▄███▀   
         ▀███    ▀▀██████████▀▀▀   ███▀     
           ▀    ▄▄▄    ██    ▄▄▄    ▀       
                 ▀████████████▀             



]]
      local logo1 = [[













    ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
    ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
    ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
    ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
    ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
    ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝



]]

      opts.config.header = vim.split(logo1, "\n")

      opts.config.center = {
        { action = "Telescope find_files", desc = " Files", icon = "📁", key = "f" },
        { action = "Telescope live_grep", desc = " Grep string", icon = "🔍", key = "g" },
        { action = "Telescope oldfiles", desc = " Recent files", icon = "🗄", key = "r" },
        {
          action = "lua require('lazyvim.util').telescope.config_files()()",
          desc = " Config",
          icon = "⚙️ ",
          key = "c",
        },
        { action = "Lazy", desc = " Lazy", icon = "💤", key = "l" },
        { action = "qa", desc = " Quit", icon = "❌", key = "q" },
      }
    end,
  },
}
