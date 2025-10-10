local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>']   = cmp.mapping.confirm({ select = true }),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Up>']   = cmp.mapping.select_prev_item(),
    ['<Right>'] = cmp.mapping.confirm({ select = true }),
    ['<Left>']  = cmp.mapping.abort(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  })
})
