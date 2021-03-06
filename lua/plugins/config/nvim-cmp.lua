-- Setup nvim-cmp.
local cmp = require"cmp"
local lspkind = require"plugins.config.lspkind-nvim"

cmp.setup({
		-- REQUIRED - you must specify a snippet engine -- For `vsnip` users.
		-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
		-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
		-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users. -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping. -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items. -- For vsnip users.
		-- { name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
		snippet = { expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end },
		mapping = {
			["<Down>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i" }),
			["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i" }),
			["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
			["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
			["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
			["<C-y>"] = cmp.config.disable,
			["<C-e>"] = cmp.mapping({
					i = cmp.mapping.abort(),
					c = cmp.mapping.close()
				}),
			["<CR>"] = cmp.mapping.confirm({ select = true })
		},
		sources = cmp.config.sources({
				{name = "nvim_lsp"},
				{name = "nvim_lua"},
				{name = "path"},
				{name = "vsnip"},
			},
			{{ name = "buffer" }})
	})

cmp.setup{
	formatting = { format = lspkind.cmp_format({ -- show only symbol annotations -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

				-- The function below will be called before any actual modifications from lspkind
				-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
				mode = "symbol",
				maxwidth = 50,
				before = function(entry, vim_item)
					return vim_item
				end
		}) }
}
-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", { sources = cmp.config.sources(
			{ { name = "cmp_git" } }, -- You can specify the `cmp_git` source if you were installed it.
			{ { name = "buffer" } }
	) })

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
		sources = {
			{name = "buffer"},
		}
	})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
		sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } })
	})
