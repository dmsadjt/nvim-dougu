return {
  -- Core dadbod plugin
  {
    "tpope/vim-dadbod",
    lazy = true,
  },
  -- UI for vim-dadbod
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_show_database_icon = 1
      -- vim.g.db_ui_use_nvim_notify = 1
      
      -- Set the save location for queries and connections
      vim.g.db_ui_save_location = vim.fn.stdpath("config") .. "/db_ui"
      
      -- Optional: Execute query on save
      vim.g.db_ui_execute_on_save = 0
    end,
    keys = {
      { "<leader>db", "<cmd>DBUI<cr>", desc = "Open Database UI" },
    },
  },
  -- Autocompletion support for SQL
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = { "sql", "mysql", "plsql" },
    lazy = true,
  },
}
