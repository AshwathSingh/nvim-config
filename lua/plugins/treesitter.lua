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
    },
  },
}
