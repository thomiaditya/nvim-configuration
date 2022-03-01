-- Dashboard Nvim
local g = vim.g

-- Change color of the dashboard to all grey
vim.cmd(
	[[
highlight dashboardFooter    guifg=grey
highlight dashboardHeader    guifg=grey
highlight dashboardCenter    guifg=grey
highlight dashboardShortCut  guifg=grey
]]
)

g.dashboard_default_executive = "telescope"
g.dashboard_custom_header =
	{
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[███╗   ███╗██╗   ██╗██╗  ████████╗██╗██╗   ██╗███████╗██████╗ ███████╗███████╗     ██████╗ ███████╗     ██████╗ ██████╗ ██████╗ ███████╗]],
		[[████╗ ████║██║   ██║██║  ╚══██╔══╝██║██║   ██║██╔════╝██╔══██╗██╔════╝██╔════╝    ██╔═══██╗██╔════╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝]],
		[[██╔████╔██║██║   ██║██║     ██║   ██║██║   ██║█████╗  ██████╔╝███████╗█████╗      ██║   ██║█████╗      ██║     ██║   ██║██║  ██║█████╗  ]],
		[[██║╚██╔╝██║██║   ██║██║     ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗╚════██║██╔══╝      ██║   ██║██╔══╝      ██║     ██║   ██║██║  ██║██╔══╝  ]],
		[[██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║ ╚████╔╝ ███████╗██║  ██║███████║███████╗    ╚██████╔╝██║         ╚██████╗╚██████╔╝██████╔╝███████╗]],
		[[╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝     ╚═════╝ ╚═╝          ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]],
		[[                                                                                                                                        ]]
	}

-- g.dashboard_session_directory = "~/.cache/nvim/session"

vim.cmd[[
	let g:dashboard_custom_shortcut={
      \ 'last_session' : 'SPC s l',
      \ 'find_history' : 'SPC f h',
      \ 'find_file' : 'CTRL p',
      \ 'new_file' : 'SPC n f',
      \ 'change_colorscheme' : 'SPC t c',
      \ 'find_word' : 'SPC f a',
      \ 'book_marks' : 'SPC f b',
      \ }
	
	nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
	nnoremap <silent> <C-p> :DashboardFindFile<CR>
	nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
	nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
	nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
	nnoremap <silent> <Leader>nf :DashboardNewFile<CR>
]]
