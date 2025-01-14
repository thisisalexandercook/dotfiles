
-- local custom_onedark = require'lualine.themes.onedark'
-- custom_onedark.normal.c.bg = '#282c34'

return {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',

    -- See `:help lualine.txt`
    opts = {
      options = {
        theme = 'tokyonight',
        component_separators = '|',
        section_separators = { left = '', right = '' },

      },
    sections = {
      lualine_a = {
        { 'mode', separator = { left = '' }, right_padding = 2, },
      },
      lualine_b = { 'filename', 'branch' },
      lualine_c = { 'fileformat' },
      lualine_x = {},
      lualine_y = {'diagnostics', 'filetype', 'progress' },
      lualine_z = {
        { 'location', separator = { right = '' }, left_padding = 2 },
      },
    },
    inactive_sections = {
      lualine_a = { 'filename' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
    },
  }
