return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>pf", -- your new shortcut
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Search Files",
      },
      {
        "<leader>ps",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Search Word in Project",
      },
    },
  },
}
