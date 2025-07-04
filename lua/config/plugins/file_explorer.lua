return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      sources = { "filesystem", "buffers", "git_status" },
      enable_cursor_hijack = true, -- Keep the cursor on the first letter of the filename.
      -- if you have a F*CK BIG repo, use: git_status_async = true,
      hide_root_node = true,
      use_popups_for_input = false, -- There are two things I hate too much: Windows and Popups.
      filtered_items = {
        show_hidden_count = false,
        hide_dotfiles = false,
        hide_gitignored = true,
        never_show = { ".git" },
        hide_by_pattern = {},
        always_show_by_pattern = {},
        always_show = { ".gitignore", }
      },
      window = {
        width = 25,
        mappings = {
          ["l"] = "open",          -- Open single node
          ["h"] = "close_node",    -- Close single node
          ["L"] = "expand_all_nodes",  -- Shift+L: Expand all subnodes
          ["H"] = "close_all_nodes",   -- Shift+H: Collapse all subnodes
          ["q"] = "close_window",
        }
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>Neotree focus<CR>", { desc = "Focus NeoTree" })
  end,
}
