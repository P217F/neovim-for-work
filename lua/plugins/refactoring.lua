return {
  "ThePrimeagen/refactoring.nvim",
  event = "BufReadPost",

  keys = {
    {
      "<F2>",
      function()
        require("refactoring").select_refactor({
          show_success_message = true,
        })
      end,
      mode = "v",
      desc = "Refactor selected code",
    },
  },

  opts = {
    prompt_func_return_type = {
      c = true,
      cpp = true,
      python = true,
      rust = true,
      asm = true,
      java = true,
      hpp = true,
      cxx = true,
    },
    prompt_func_param_type = {
      c = true,
      hpp = true,
      cxx = true,
      cpp = true,
      python = true,
      rust = true,
      asm = true,
      java = true,
      kotlin = true,
    },
  },

  config = function(_, opts)
    local refactoring = require("refactoring")
    refactoring.setup(opts)

    vim.keymap.set("x", "re", function()
      refactoring.refactor("Extract Function")
    end, { desc = "Extract Function" })

    vim.keymap.set("x", "rf", function()
      refactoring.refactor("Extract Function To File")
    end, { desc = "Extract Function To File" })

    vim.keymap.set("x", "rv", function()
      refactoring.refactor("Extract Variable")
    end, { desc = "Extract Variable" })

    vim.keymap.set("x", "rbb", function()
      refactoring.refactor("Extract Block")
    end, { desc = "Extract Block" })

    vim.keymap.set("x", "rbf", function()
      refactoring.refactor("Extract Block To File")
    end, { desc = "Extract Block To File" })

    vim.keymap.set("n", "ri", function()
      refactoring.refactor("Inline Variable")
    end, { desc = "Inline Variable" })

    vim.keymap.set("n", "rI", function()
      refactoring.refactor("Inline Function")
    end, { desc = "Inline Function" })
  end,
}
