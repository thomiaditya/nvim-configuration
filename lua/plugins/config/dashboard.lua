-- Dashboard Nvim
local g = vim.g

-- Change color of the dashboard to all grey
vim.cmd([[
highlight dashboardFooter    guifg=grey
highlight dashboardHeader    guifg=grey
highlight dashboardCenter    guifg=grey
highlight dashboardShortCut  guifg=grey
]])

g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
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
[[                                                                                                                                        ]],
}

g.dashboard_session_directory = '~/.cache/vim/session'

vim.cmd [[
	let g:dashboard_custom_shortcut={
      \ 'last_session' : 'SPC s l',
      \ 'find_history' : 'SPC f h',
      \ 'find_file' : 'CTRL p',
      \ 'new_file' : 'SPC c n',
      \ 'change_colorscheme' : 'SPC t c',
      \ 'find_word' : 'SPC f a',
      \ 'book_marks' : 'SPC f b',
      \ }
]]
