return {
  -- LSP: Move code actions to <leader>ca
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action" },
      { "<leader>c", false },
    },
  },

  -- Buffer workflow
  {
    "LazyVim/LazyVim",
    keys = {
      -- Close current buffer
      {
        "<leader>c",
        function()
          require("snacks").bufdelete()
        end,
        desc = "Close Buffer",
      },

      -- Force close
      {
        "<leader>C",
        function()
          require("snacks").bufdelete({ force = true })
        end,
        desc = "Force Close Buffer",
      },

      -- Close others
      {
        "<leader>bo",
        function()
          require("snacks").bufdelete.other()
        end,
        desc = "Close Other Buffers",
      },

      -- Close all
      {
        "<leader>ba",
        function()
          require("snacks").bufdelete.all()
        end,
        desc = "Close All Buffers",
      },

      -- Navigate buffers
      { "<S-l>", "<cmd>bnext<cr>", desc = "Next Buffer" },
      { "<S-h>", "<cmd>bprevious<cr>", desc = "Prev Buffer" },
    },
  },
}
