return {
  {
    "yetone/avante.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("avante").setup({
        provider = "openai",

        providers = {
          openai = {
            api_key_name = "OPENAI_API_KEY",
            model = "gpt-3.5-turbo",

            extra_request_body = {
              max_tokens = 1000,
              temperature = 0.7,
            },
          },
        },

        -- Popup window configuration
        window = {
          width = 0.7,
          height = 0.5,
          border = "rounded",
          winblend = 10,
          highlight = "NormalFloat",
        },

        -- Agent settings
        agent = {
          enabled = true,
          auto_approve = false,
          steps = 5,
        },

        -- History settings
        history = {
          max_lines = 1500,
          persistent = true,
        },

        -- UI customization
        ui = {
          border = "rounded",
          winblend = 10,
          prompt_prefix = "🤖 ",
          response_prefix = "💡 ",
          icons = { edit = "✏️", apply = "✅" },
        },

        keymap = {},
        debug = false,
      })
    end,
  }
}
