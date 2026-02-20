return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      -- Move code actions to <leader>ca
      {
        "<leader>ca",
        vim.lsp.buf.code_action,
        desc = "Code Action",
      },
      -- Disable old mapping
      {
        "<leader>c",
        false,
      },
    },
  },
}
