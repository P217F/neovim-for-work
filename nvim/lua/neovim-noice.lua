require("noice").setup({
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
    format = {
      cmdline = { pattern = "^:", icon = "_", lang = "vim" },
    },
  },

  messages = {
    enabled    = true,
    view       = "notify",
    view_error = "notify",
    view_warn  = "notify",
  },

  popupmenu = {
    enabled     = true,
    backend     = "nui",
    relative    = "editor",
    size        = { width = 40, height = 10 },
    win_options = { winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder" },
    zindex      = 40,
  },

  lsp = {
    progress  = { enabled = true },
    hover     = { enabled = true },
    signature = { enabled = true },
  },

  presets = {
    bottom_search         = false,
    command_palette       = false,
    long_message_to_split = false,
    lsp_doc_border        = true,
  },

  views = {
    cmdline_popup = {
      border      = { style = "rounded", padding = { 0, 1 } },
      size        = { width = 40, height = 1 },
      win_options = { winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder" },
      zindex      = 50,
    },
  },

  routes = {
    {
      filter = { event = "msg_show", find = "written" },
      opts   = { skip = true },
    },
  },
})
