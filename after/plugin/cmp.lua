local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
	  completion = cmp.config.window.bordered({
		  -- Set the 'PmenuSel' highlight for the selected item
		  winhighlight = 'Normal:Pmenu,MenuSel:PmenuSel,CursorLine:PmenuSel,Search:None',
	  }),
	  documentation = cmp.config.window.bordered({
		  -- Set the 'PmenuSel' highlight for the selected item in documentation
		  winhighlight = 'NormalFloat:Pmenu,FloatBorder:Pmenu,Search:None',
	  }),
  },
  mapping = {
	  ['<Tab>'] = cmp.mapping.select_next_item(),
	  ['<S-Tab>'] = cmp.mapping.select_prev_item(),
	  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
	  { name = 'nvim_lsp' },
	  { name = 'luasnip' }, -- For snippets
	  { name = 'buffer' },
	  { name = 'path' }
  },
  formatting = {
	  format = lspkind.cmp_format({
		  with_text = true, -- Show the text along with icons
		  maxwidth = 20,    -- Prevent the popup from being too wide
		  before = function(entry, vim_item)
			  -- Clear out the menu item to remove the gray text
			  vim_item.menu = ""
			  return vim_item
		  end
	  }),
  },

})
