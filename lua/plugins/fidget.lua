return {
  "j-hui/fidget.nvim",
  tag = "legacy",
  event = "LspAttach",
  config = function()
    require("fidget").setup {
      text = {
        spinner = "dots",
      },
      window = {
        blend = 0,
      },
    }

    vim.api.nvim_set_hl(0, "FidgetTitle", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FidgetTask", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "Fidget", { bg = "NONE" })
  end,
}
