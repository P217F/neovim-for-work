local M = {}

M.setup = function(on_attach, capabilities)
  local markers = { ".git", "mvnw", "gradlew", "build.gradle", "settings.gradle" }

  local function get_root_dir(fname)
    for _, marker in ipairs(markers) do
      local found = vim.fs.find(marker, { upward = true, path = fname })
      if #found > 0 then
        return vim.fs.dirname(found[1])
      end
    end
    return vim.fn.getcwd()
  end

  local root_dir = get_root_dir(vim.api.nvim_buf_get_name(0))
  local workspace_dir = vim.fn.expand("~/.local/share/eclipse/") .. "/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

  local jdtls_config = {
    name = "jdtls",
    cmd = { "jdtls" },
    capabilities = capabilities,
    on_attach = on_attach,
    root_dir = root_dir,
    workspace_folder = workspace_dir,
  }

  local clients = vim.lsp.get_clients({ bufnr = 0 })
  for _, c in ipairs(clients) do
    if c.name == "jdtls" then return end
  end
  vim.lsp.start(jdtls_config)
end

return M
