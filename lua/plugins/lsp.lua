-- lua/plugins/lsp.lua
return {
  -- LSP Configuration & Plugins
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
      "jose-elias-alvarez/typescript.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local mason = require("mason")
      local mason_lsp = require("mason-lspconfig")

      -- Setup Mason
      mason.setup()
      mason_lsp.setup({
        ensure_installed = { "clangd", "pyright", "jdtls" },
      })

      -- LSP on_attach
      local on_attach = function(client, bufnr)
        local buf_map = function(mode, lhs, rhs, desc)
          if desc then
            desc = "LSP: " .. desc
          end
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- Example keymaps
        buf_map("n", "gd", vim.lsp.buf.definition, "Go to Definition")
        buf_map("n", "K", vim.lsp.buf.hover, "Hover Documentation")
        buf_map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
        buf_map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
      end

      -- Default LSP options
      local lsp_opts = {
        on_attach = on_attach,
      }

      -- Python (pyright)
      lspconfig.pyright.setup(lsp_opts)

      -- C/C++ (clangd)
      lspconfig.clangd.setup(lsp_opts)
    end,
  },
}
