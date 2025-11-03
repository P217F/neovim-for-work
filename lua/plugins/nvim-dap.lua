return {
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    keys = {
      {
        "<F6>",
        function()
          require("lazy").load({ plugins = { "nvim-dap-ui" } })
          require("dap").continue()
        end,
        desc = "DAP: start/continue"
      },
    },
    config = function()
      local dap = require("dap")

      vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DiagnosticError', linehl = '', numhl = '' })
      vim.fn.sign_define('DapBreakpointCondition', { text = '◆', texthl = 'DiagnosticWarn', linehl = '', numhl = '' })
      vim.fn.sign_define('DapBreakpointRejected', { text = '✗', texthl = 'DiagnosticError', linehl = '', numhl = '' })
      vim.fn.sign_define('DapStopped', { text = '→', texthl = 'DiagnosticInfo', linehl = 'Visual', numhl = '' })
      vim.fn.sign_define('DapLogPoint', { text = '◆', texthl = 'DiagnosticHint', linehl = '', numhl = '' })

      local opts = { noremap = true, silent = true }

      -- C/C++ with cpptools (GDB backend)
      dap.adapters.cppdbg = {
        id = 'cppdbg',
        type = 'executable',
        command = "OpenDebugAD7",
      }

      dap.configurations.cpp = {
        {
          name = "Launch file",
          type = "cppdbg",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopAtEntry = true,
          justMyCode = false,
          setupCommands = {
            {
              text = '-enable-pretty-printing',
              description = 'enable pretty printing',
              ignoreFailures = false
            },
          },
        },
      }
      dap.configurations.c = dap.configurations.cpp

      -- Python with debugpy + auto detect venv/conda
      dap.adapters.python = {
        type = 'executable',
        command = 'python',
        args = { '-m', 'debugpy.adapter' },
      }

      dap.configurations.python = {
        {
          type = 'python';
          request = 'launch';
          name = "Launch file";
          program = "${file}";
          stopOnEntry = true;
          pythonPath = function()
            local venv = os.getenv("VIRTUAL_ENV")
            if venv then return venv .. "/bin/python" end
            local conda = os.getenv("CONDA_PREFIX")
            if conda then return conda .. "/bin/python" end
            return "python3"
          end;
        },
      }

      vim.api.nvim_set_keymap("n", "<leader>b", '<Cmd>lua require"dap".toggle_breakpoint()<CR>', opts)
      vim.api.nvim_set_keymap("n", "<F10>", '<Cmd>lua require"dap".step_over()<CR>', opts)
      vim.api.nvim_set_keymap("n", "<F11>", '<Cmd>lua require"dap".step_into()<CR>', opts)
      vim.api.nvim_set_keymap("n", "<F12>", '<Cmd>lua require"dap".step_out()<CR>', opts)
      vim.api.nvim_set_keymap("n", "<leader>t", '<Cmd>lua require"dap".terminate()<CR>', opts)
      vim.api.nvim_set_keymap("n", "<leader>r", '<Cmd>lua require"dap".step_out()<CR>', opts)
    end
  },

  {
    "rcarriga/nvim-dap-ui",
    lazy = true,
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  }
}
