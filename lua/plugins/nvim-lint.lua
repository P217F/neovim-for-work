return {
  "mfussenegger/nvim-lint",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local lint = require("lint")

    vim.api.nvim_create_autocmd({"BufWritePost"}, {
      callback = function()
        lint.try_lint()
      end
    })

    lint.linters_by_ft = {
      python = {"flake8"},       -- Python
      c = {"clang-tidy"},        -- C
      cpp = {"clang-tidy"},      -- C++
      javascript = {"eslint"}    -- JS
    }
  end
}
