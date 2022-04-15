if not pcall(require, "feline") then
  error("feline module not found")
end

local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'

-- local colors = {
--   bg = "#68217A",
--   fg = "#abb2bf",
--   red = "#e06c75",
--   orange = "#d19a66",
--   yellow = "#e5c07b",
--   green = "#98c379",
--   aqua = "#61afef",
--   blue = "#7078BD",
--   purple = "#AB65B3",
--   magenta = "#E8283B",
--   cyan = "#61afef",
--   white = "#BEC7F2",
--   black = "#1d2021",
--   lightblack = "#282a36",
--   lightred = "#e06c75",
--   lightgreen = "#98c379",
--   lightyellow = "#e5c07b",
--   lightblue = "#61afef",
--   lightmagenta = "#d33682",
--   lightcyan = "#61afef",
--   lightwhite = "#f8f8f2",
-- }

local colors = require("dracula").colors()

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

-- Create components container.
local components = {
  active = {},
  inactive = {},
}

-- Insert 3D in componenets
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.inactive, {})
table.insert(components.inactive, {})
table.insert(components.inactive, {})

local contents = {
  separator = function(sep)
    return {
      provider = sep,
      hl = {
        fg = colors.white,
        bg = colors.bg,
      },
    }
  end,

  vi_mode = {
    provider = function()
      return " ● "
    end,
    hl = function()
      local val = {
        name = vi_mode_utils.get_mode_highlight_name(),
        fg = vi_mode_utils.get_mode_color(),
        bg = colors.bg,
        style = 'bold'
      }
      return val
    end,
  },

  file_info = {
    provider = require("utils.file_name").get_current_ufn,
    opts = {
      type = 'unique',
    },
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  git_branch = {
    provider = "git_branch",
    hl = {
      fg = colors.purple,
      bg = colors.bg,
    },
  },

  diagnostic = {
    error = {
      provider = "diagnostic_errors",
      enabled = function ()
        return lsp.diagnostics_exist(vim.diagnostic.severity.ERROR)
      end,
      hl = {
        fg = colors.red,
        bg = colors.bg,
      },
    },
    warning = {
      provider = "diagnostic_warnings",
      icon = " ● ",
      enabled = function ()
        return lsp.diagnostics_exist(vim.diagnostic.severity.WARNING)
      end,
      hl = {
        fg = colors.orange,
        bg = colors.bg,
      },
    },
    info = {
      provider = "diagnostic_info",
      enabled = function ()
        return lsp.diagnostics_exist(vim.diagnostic.severity.INFO)
      end,
      hl = {
        fg = colors.green,
        bg = colors.bg,
      },
    },
    hint = {
      provider = "diagnostic_hints",
      icon = " ● ",
      enabled = function ()
        return lsp.diagnostics_exist(vim.diagnostic.severity.HINT)
      end,
      hl = {
        fg = colors.yellow,
        bg = colors.bg,
      },
    },
  },

  position = {
    provider = "position",
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  line_percentage = {
    provider = "line_percentage",
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  file_encoding = {
    provider = "file_encoding",
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  tab_size = {
    provider = function ()
      return "Tab: " .. vim.api.nvim_exec([[echo &shiftwidth]], true)
    end,
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  file_type = {
    provider = "file_type",
    hl = {
      fg = colors.white,
      bg = colors.bg,
      style = "italic",
    },
  },

  file_format = {
    provider = "file_format",
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  file_size = {
    provider = "file_size",
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  },

  symbols = {
    provider = "ㅹ",
    hl = {
      fg = colors.white,
      bg = colors.bg,
    },
  }
}

-- Insert content to component container
table.insert(components.active[1], contents.vi_mode)
table.insert(components.active[1], contents.file_info)
table.insert(components.active[1], contents.separator("  "))
table.insert(components.active[1], contents.git_branch)
table.insert(components.active[1], contents.separator(" "))

table.insert(components.active[1], contents.diagnostic.error)
table.insert(components.active[1], contents.diagnostic.warning)
table.insert(components.active[1], contents.diagnostic.info)
table.insert(components.active[1], contents.diagnostic.hint)

table.insert(components.active[3], contents.position)
table.insert(components.active[3], contents.separator("  "))
table.insert(components.active[3], contents.file_encoding)
table.insert(components.active[3], contents.separator("  "))
table.insert(components.active[3], contents.tab_size)
table.insert(components.active[3], contents.separator("  "))
table.insert(components.active[3], contents.file_type)
table.insert(components.active[3], contents.separator(" "))
table.insert(components.active[3], contents.symbols)
table.insert(components.active[3], contents.separator(" "))

-- Starting feline
local feline = require'feline'

feline.setup {
  default_bg = colors.bg,
  default_fg = colors.fg,
  components = components,
  vi_mode_colors = vi_mode_colors,
  force_inactive = {
    filetypes = {
      'packer',
      'NvimTree',
      'dashboard',
    },
    buftypes = {'terminal'},
    bufnames = {}
  }
}
