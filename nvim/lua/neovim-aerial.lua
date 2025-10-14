require("aerial").setup({
  backends = { "lsp", "treesitter" },
  layout = {
    min_width = 26,
    default_direction = "right",
  },
  show_guides = true,
  icons = {
    Function = "ƒ",
    Class = "𝓒",
    Variable = "",
  },
})
vim.keymap.set("n", "<F1>", "<cmd>AerialToggle!<CR>")
