return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      {
        "<leader>ca",
        vim.lsp.buf.code_action,
        desc = "Code Action",
      },
      {
        "<leader>c",
        false,
      },
    },
  },
}
