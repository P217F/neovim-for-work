return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- 🧱 Header
    dashboard.section.header.val = {
      " █████╗ ██╗     ██╗     ███████╗███╗   ██╗",
      "██╔══██╗██║     ██║     ██╔════╝████╗  ██║",
      "███████║██║     ██║     █████╗  ██╔██╗ ██║",
      "██╔══██║██║     ██║     ██╔══╝  ██║╚██╗██║",
      "██║  ██║███████╗███████╗███████╗██║ ╚████║",
      "╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═══╝",
      "                  NEOVIM DASHBOARD",
    }

    -- 🧭 Buttons
    dashboard.section.buttons.val = {
      dashboard.button("F3","󰈞  Show Telescope Fuzzy Finder", ":Telescope find_files<CR>"),
      dashboard.button("F5","󰙅  Show NvimTree", ":NvimTreeToggle<CR>"),
      dashboard.button("F9","  Open Terminal", ":terminal<CR>"),
      dashboard.button("q","󰅚  Quit", ":qa<CR>"),
      dashboard.button("qq","  Force Quit (no save)", ":qa!<CR>"),
    }

    -- 🪶 Footer
    dashboard.section.footer.val = "⚡ Welcome back, ALLEN — loaded via Lazy.nvim ⚡"

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        if vim.fn.argc() == 0 then
          require("alpha").start(true)
        end
      end,
    })

    vim.api.nvim_create_autocmd("BufDelete", {
      callback = function()
        if vim.fn.bufnr("$") == 1 and vim.api.nvim_buf_get_name(0) == "" then
          require("alpha").start(true)
        end
      end,
    })
  end,
}
