-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

vim.opt.mouse = "a"
vim.g.python3_host_prog = "/bin/python3.10"
--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

 hooks.add("setup_mappings", function(map)
    map("n", "ö", ":", opt) -- example to delete the buffer 
    map("n", "-", "/", opt) -- example to delete the buffer
    map("n", "<leader>mm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts) -- format
  end)
-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

hooks.add("install_plugins", function(use)
    use {
       "mattn/emmet-vim",
--       event = "InsertEnter",
       setup = function()
          vim.g.user_emmet_leader_key = ","
          vim.g.user_emmet_settings = {
            indent_blockelement = 1,
          }
        end,
    }
   use {
      "jose-elias-alvarez/null-ls.nvim",
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   }
   use {
      "williamboman/nvim-lsp-installer",
   }
  use {
      'wfxr/minimap.vim',
      setup = function()
      vim.g.minimap_width = 10
      vim.g.minimap_auto_start = o 
      vim.g.minimap_auto_start_win_enter = 0 
    end, 
   }
end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"Nvim-web-devicons
--

