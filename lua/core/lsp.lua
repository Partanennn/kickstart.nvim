local cmp = require 'cmp'

cmp.setup {
  sources = {
    { name = 'nvim_lsp' }, -- LSP-based completion (variables, JSX)
    { name = 'buffer' }, -- Complete from current file
    { name = 'path' }, -- File paths
    { name = 'luasnip' }, -- Snippets
  },
}

cmp.setup {
  mappping = {
    ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept completion with Enter
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Move to next itme and select
    ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Move to previous item and select
  },
}
