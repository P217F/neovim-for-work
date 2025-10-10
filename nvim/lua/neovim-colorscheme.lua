require("solarized-osaka").setup({
  transparent = true,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})
vim.cmd.colorscheme("solarized-osaka")

