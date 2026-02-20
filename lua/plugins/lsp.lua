return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    local on_attach = function(client, bufnr)
      local opts = { buffer = bufnr, silent = true }

      -- Format ONLY when pressing <leader>fm
      vim.keymap.set("n", "<leader>fm", function()
        vim.lsp.buf.format({
          async = true,
        })
      end, opts)
    end

    lspconfig.tsserver.setup({
      on_attach = on_attach,
    })

    lspconfig.lua_ls.setup({
      on_attach = on_attach,
    })
  end,
}
