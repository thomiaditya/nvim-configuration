local lsp = require("feline.providers.lsp")
local vi_mode_utils = require("feline.providers.vi_mode")
-- local gps = require("nvim-gps")

local force_inactive = {
	filetypes = {},
	buftypes = {},
	bufnames = {}
}

local components = {
	active = { {}, {}, {} },
	inactive = { {}, {}, {} }
}

local colors = {
	bg = "#282a36",
	black = "#282a36",
	yellow = "#e0af68",
	cyan = "#7dcfff",
	oceanblue = "#45707a",
	green = "#9ece6a",
	orange = "#ff9e64",
	violet = "#d3869b",
	magenta = "#bb9af7",
	white = "#f8f8f2",
	fg = "#c0caf5",
	skyblue = "#8be9fd",
	red = "#f7768e"
}

local vi_mode_colors = {
	NORMAL = "green",
	OP = "green",
	INSERT = "red",
	VISUAL = "skyblue",
	LINES = "skyblue",
	BLOCK = "skyblue",
	REPLACE = "violet",
	["V-REPLACE"] = "violet",
	ENTER = "cyan",
	MORE = "cyan",
	SELECT = "orange",
	COMMAND = "green",
	SHELL = "green",
	TERM = "green",
	NONE = "yellow"
}

local vi_mode_text = {
	NORMAL = "<|",
	OP = "<|",
	INSERT = "|>",
	VISUAL = "<>",
	LINES = "<>",
	BLOCK = "<>",
	REPLACE = "<>",
	["V-REPLACE"] = "<>",
	ENTER = "<>",
	MORE = "<>",
	SELECT = "<>",
	COMMAND = "<|",
	SHELL = "<|",
	TERM = "<|",
	NONE = "<>"
}

local buffer_not_empty = function()
	if vim.fn.empty(vim.fn.expand("%:t")) ~= 1 then
		return true
	end
	return false
end

local checkwidth = function()
	local squeeze_width = vim.fn.winwidth(0) / 2
	if squeeze_width > 40 then
		return true
	end
	return false
end

force_inactive.filetypes =
	{
		"NvimTree",
		"dbui",
		"packer",
		"startify",
		"fugitive",
		"fugitiveblame",
		"dashboard"
	}

force_inactive.buftypes = { "terminal" }

-- LEFT

-- -- vi-mode
-- components.active[1][2] = {
--   provider = vi_mode_utils.get_vim_mode(),
--   hl = function()
--     local val = {}
--
--     val.fg = "grey"
--     val.bg = "black"
--     val.style = "bold"
--
--     return val
--   end,
--   right_sep = " ",
--   left_sep = " "
-- }

-- gitBranch
components.active[1][2] = {
	provider = "git_branch",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	},
	-- right_sep = " ",
	left_sep = " "
}

-- vi-symbol
components.active[1][1] = {
	provider = function()
		return vi_mode_text[vi_mode_utils.get_vim_mode()]
	end,
	hl = function()
		local val = {}
		val.fg = vi_mode_utils.get_mode_color()
		-- val.fg = "grey"
		val.bg = "bg"
		val.style = "bold"
		return val
	end,
	right_sep = "",
	left_sep = " "
}

-- -- filename
-- components.active[1][3] = {
--   --  provider = function()
--   --    return vim.fn.expand("%:F")
--   --  end,
--   provider = {
--     name = "file_info",
--     opts = {
--       type = "unique",
--       colored_icon = false,
--       file_modified_icon = "",
--       file_readonly_icon = ""
--     }
--   },
--   hl = {
--     fg = "white",
--     bg = "bg",
--     style = "bold"
--   },
--   right_sep = {
--     str = "",
--     hl = {
--       fg = "white",
--       bg = "bg",
--       style = "bold"
--     }
--   }
-- }
--
-- -- nvimGps
-- components.active[1][4] = {
--   provider = function()
--     return gps.get_location()
--   end,
--   enabled = function()
--     return gps.is_available()
--   end,
--   hl = {
--     fg = "white",
--     bg = "bg",
--     style = "bold"
--   }
-- }

-- MID

-- diffAdd
components.active[1][3] = {
	provider = "git_diff_added",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	}
}

-- diffModfified
components.active[1][4] = {
	provider = "git_diff_changed",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	}
}

-- diffRemove
components.active[1][5] = {
	provider = "git_diff_removed",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	}
}

-- diagnosticErrors
components.active[1][6] = {
	provider = "diagnostic_errors",
	enabled = function()
		return lsp.diagnostics_exist(vim.diagnostic.severity.ERROR)
	end,
	hl = {
		fg = "grey",
		style = "bold"
	}
}

-- diagnosticWarn
components.active[1][7] = {
	provider = "diagnostic_warnings",
	enabled = function()
		return lsp.diagnostics_exist(vim.diagnostic.severity.WARN)
	end,
	hl = {
		fg = "grey",
		style = "bold"
	}
}

-- diagnosticHint
components.active[1][8] = {
	provider = "diagnostic_hints",
	enabled = function()
		return lsp.diagnostics_exist(vim.diagnostic.severity.HINT)
	end,
	hl = {
		fg = "grey",
		style = "bold"
	}
}

-- diagnosticInfo
components.active[1][9] = {
	provider = "diagnostic_info",
	enabled = function()
		return lsp.diagnostics_exist(vim.diagnostic.severity.INFO)
	end,
	hl = {
		fg = "grey",
		style = "bold"
	}
}

-- RIGHT

-- LspName
components.active[3][1] = {
	provider = "lsp_client_names",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	},
	right_sep = " "
}

-- fileIcon
-- components.active[3][2] = {
--   provider = function()
--     local filename = vim.fn.expand('%:t')
--     local extension = vim.fn.expand('%:e')
--     local icon  = require'nvim-web-devicons'.get_icon(filename, extension)
--     if icon == nil then
--       icon = ''
--     end
--     return icon
--   end,
--   hl = function()
--     local val = {}
--     local filename = vim.fn.expand('%:t')
--     local extension = vim.fn.expand('%:e')
--     local icon, name  = require'nvim-web-devicons'.get_icon(filename, extension)
--     if icon ~= nil then
--       val.fg = vim.fn.synIDattr(vim.fn.hlID(name), 'fg')
--     else
--       val.fg = 'white'
--     end
--     val.bg = 'bg'
--     val.style = 'bold'
--     return val
--   end,
--   right_sep = ' '
-- }

-- fileType
components.active[3][2] = {
	provider = {
		name = "file_type",
		opts = { filetype_icon = false }
	},
	hl = function()
		local val = {}
		local filename = vim.fn.expand("%:t")
		local extension = vim.fn.expand("%:e")
		local icon, name = require"nvim-web-devicons".get_icon(filename, extension)
		if icon ~= nil then
			-- val.fg = vim.fn.synIDattr(vim.fn.hlID(name), "fg")
			val.fg = "grey"
		else
			val.fg = "grey"
		end
		val.bg = "bg"
		val.style = "bold"
		return val
	end,
	right_sep = " "
}

-- fileSize
components.active[3][3] = {
	provider = "file_size",
	enabled = function()
		return vim.fn.getfsize(vim.fn.expand("%:t")) > 0
	end,
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	},
	right_sep = " "
}
--
-- -- fileFormat
-- components.active[3][4] = {
--   provider = function() return '' .. vim.bo.fileformat:upper() .. '' end,
--   hl = {
--     fg = 'white',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }
--
-- fileEncode
components.active[3][4] = {
	provider = "file_encoding",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	},
	right_sep = " "
}

-- rubyVersion
-- components.active[3][7] = {
--   provider = function()
--     return ' '..vim.fn['rvm#string']()
--   end,
--   hl = {
--     fg = 'red',
--     bg = 'bg',
--     style = 'bold'
--   },
--   right_sep = ' '
-- }

-- lineInfo
components.active[3][5] = {
	provider = "position",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	},
	right_sep = " "
}

-- linePercent
components.active[3][6] = {
	provider = "line_percentage",
	hl = {
		fg = "grey",
		bg = "bg",
		style = "bold"
	},
	right_sep = " "
}
--
-- -- scrollBar
-- components.active[3][8] = {
--   provider = 'scroll_bar',
--   hl = {
--     fg = 'yellow',
--     bg = 'bg',
--   },
-- }
--
-- INACTIVE

-- fileType
components.inactive[3][7] = {
	provider = "file_type",
	hl = {
		fg = "black",
		bg = "cyan",
		style = "bold"
	},
	left_sep = {
		str = " ",
		hl = {
			fg = "NONE",
			bg = "cyan"
		}
	},
	right_sep = { {
		str = " ",
		hl = {
			fg = "NONE",
			bg = "cyan"
		}
	}, " " }
}

require("feline").setup({
	-- theme = colors,
	-- theme = "tokyonight",
	default_bg = colors.bg,
	default_fg = colors.fg,
	vi_mode_colors = vi_mode_colors,
	components = components,
	force_inactive = force_inactive
})
