local function set_transparent()
  vim.cmd [[
    hi CursorLine guibg=NONE ctermbg=NONE
    hi CursorLineNr guibg=NONE ctermbg=NONE
    hi LineNr guibg=NONE ctermbg=NONE
    hi SignColumn guibg=NONE ctermbg=NONE
    hi GitSignsAdd guibg=NONE ctermbg=NONE
    hi GitSignsChange guibg=NONE ctermbg=NONE
    hi GitSignsDelete guibg=NONE ctermbg=NONE
    hi Pmenu guibg=NONE ctermbg=NONE
    hi PmenuThumb guibg=NONE ctermbg=NONE
    hi PmenuSbar guibg=NONE ctermbg=NONE
    hi CmpItemAbbrMatch guibg=NONE ctermbg=NONE
    hi CmpItemAbbrMatchFuzzy guibg=NONE ctermbg=NONE
    hi CmpItemKind guibg=NONE ctermbg=NONE
    hi PmenuSel guibg=#458588 guifg=#ebdbb2 ctermbg=66 ctermfg=223
  ]]
end

vim.api.nvim_create_autocmd("ColorScheme", { pattern="*", callback=set_transparent })
vim.api.nvim_create_autocmd("VimEnter", { callback=set_transparent })

set_transparent()
