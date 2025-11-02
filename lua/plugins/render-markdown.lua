return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  opts = {
    heading = {
      enabled = true,
      icons = { "󰎤 ", "󰎧 ", "󰎩 ", "󰎫 ", "󰎭 ", "󰎯 " },
      signs = true,
    },
    code = {
      enabled = true,
      style = "rounded",
    },
    checkbox = {
      enabled = true,
      icons = {
        todo = " ",
        done = " ",
      },
    },
  },
  config = function(_, opts)
    require("render-markdown").setup(opts)
  end,
}
