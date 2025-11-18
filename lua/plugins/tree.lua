return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },

  opts = {
    sort = { sorter = "case_sensitive" },
    view = { width = 25 },
    renderer = {
      group_empty = true,
      indent_markers = { enable = true },
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
      },
    },
    filters = {
      dotfiles = false,
      git_ignored = false,
    },
  },

  config = function(_, opts)
    require("nvim-tree").setup(opts)

    vim.keymap.set("n", "<F4>", "<cmd>NvimTreeToggle<CR>", {
      noremap = true,
      silent = true,
      desc = "Toggle NvimTree",
    })
  end,
}
