local capabilities = require('cmp_nvim_lsp').default_capabilities()

local pyright_config = {
  name = "pyright",
  cmd = { "pyright-langserver", "--stdio" },
  capabilities = capabilities,
}

local clangd_config = {
  name = "clangd",
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--cross-file-rename",
  },
  capabilities = capabilities,
  on_attach = on_attach,
  root_dir = function(fname)
    return vim.fs.dirname(vim.fs.find(
      { ".clangd", "compile_commands.json", ".git" },
      { upward = true, path = fname }
    )[1])
  end,
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function(args)
    local clients = vim.lsp.get_clients({ bufnr = args.buf })
    for _, c in ipairs(clients) do
      if c.name == "pyright" then
        return
      end
    end
    vim.lsp.start(pyright_config)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "h", "objc", "objcpp", "hpp" },
  callback = function(args)
    local clients = vim.lsp.get_clients({ bufnr = args.buf })
    for _, c in ipairs(clients) do
      if c.name == "clangd" then
        return
      end
    end
    vim.lsp.start(clangd_config)
  end,
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false,
      scope = "cursor",
      border = "rounded",
    })
  end,
})

local signs = {
  Error = "",
  Warn  = "",
  Hint  = "",
  Info  = "",
}

vim.diagnostic.config({
  virtual_text = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
    },
  },
  --[[virtual_text = {
    prefix = "",
  },]]
  underline = true,
  update_in_insert = false,
    severity_sort = true,
})
