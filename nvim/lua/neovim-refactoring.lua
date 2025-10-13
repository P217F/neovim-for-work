
require('refactoring').setup({
    prompt_func_return_type = {
        java = true,
        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
    },
    prompt_func_param_type = {
        go = true,
        java = true,

        cpp = true,
        c = true,
        h = true,
        hpp = true,
        cxx = true,
    },
    printf_statements = {},
    print_var_statements = {},
    show_success_message = true,
})
vim.api.nvim_set_keymap(
  "v", "<leader>rr",
  ":lua require('refactoring').select_refactor()<CR>",
  { noremap = true, silent = true, expr = false }
)
