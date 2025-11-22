return {
  {
    "yetone/avante.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("avante").setup({
        -- Choose the online provider: OpenAI / Claude / HuggingFace
        provider = "openai",        -- "claude", "huggingface", "copilot(unsupport)",...
        openai = {
          api_key_name = "OPENAI_API_KEY", -- fetch API key from environment variable
          model = "gpt-3.5-turbo",         -- free tier model, stable
          max_tokens = 1000,                -- maximum tokens per request
          temperature = 0.7,                -- creativity control
        },

        -- Popup window configuration
        window = {
          width = 0.7,          -- horizontal size ratio
          height = 0.5,         -- vertical size ratio
          border = "rounded",   -- nice rounded border
          winblend = 10,        -- slight transparency
          highlight = "NormalFloat", -- window highlight
        },

        -- Agent settings: AI can suggest refactors/fixes
        agent = {
          enabled = true,       -- turn on agent
          auto_approve = false, -- requires manual approval before applying changes
          steps = 5,            -- number of agent suggestion steps
        },

        -- History settings: store prompts + responses
        history = {
          max_lines = 1500,     -- number of lines to keep
          persistent = true,    -- save history to disk
        },

        -- UI customization
        ui = {
          border = "rounded",
          winblend = 10,
          prompt_prefix = "🤖 ",     -- AI prompt icon
          response_prefix = "💡 ",   -- AI response icon
          icons = { edit = "✏️", apply = "✅" },
        },

        keymap = {},
        debug = false,
      })
    end,
  }
}
