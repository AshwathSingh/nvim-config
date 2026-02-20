function ColorMyPencils(color)
  color = "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon",

        disable_background = true,
        disable_float_background = true,

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
        highlight_groups = {
          NeoTreeRootName = { fg = "pine", bold = true },
          NeoTreeFileNameOpened = { fg = "love" }, -- Example accent
        },
      })

      vim.cmd("colorscheme rose-pine-moon")
    end,
  },
}
