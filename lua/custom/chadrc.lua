local M = {}

local highlights = require 'custom.highlights'

M.ui = {
  theme = 'penumbra_light',
  theme_toggle = { 'penumbra_light', 'nightfox' },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = 'custom.plugins'

M.mappings = require 'custom.mappings'

return M
