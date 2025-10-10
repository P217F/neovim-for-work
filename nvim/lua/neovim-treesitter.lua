-- lua/neovim-treesitter.lua
require('nvim-treesitter.configs').setup {
  ensure_installed = { "python", "c", "cpp" },
  sync_install = true,
  auto_install = true,
  ignore_install = {},

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = function(lang, buf)
      local max_filesize = 100 * 2048
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
  },

  indent = { 
    enable = true
  },

  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = true },
    smart_rename = { enable = true },
  },

  textobjects = {
    select = { enable = true },
    move = { enable = true, set_jumps = true },
  },

  incremental_selection = { enable = true },
}

