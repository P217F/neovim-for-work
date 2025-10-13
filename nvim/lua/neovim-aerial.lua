require("aerial").setup({
  backends = { "lsp", "treesitter" },
  layout = {
    min_width = 28,
    default_direction = "right",
  },
  show_guides = true,
  icons = {
    Function = "ƒ",
    Class = "𝓒",
    Variable = "",
  },
})
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
