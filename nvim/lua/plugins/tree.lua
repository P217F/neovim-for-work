return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  opts = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 28,
    },
    renderer = {
      group_empty = true,
      indent_markers = {
        enable = true,
      },
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
  end,
  keys = {
    { "<F5>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
  },
}

