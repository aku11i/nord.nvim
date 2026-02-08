local c = require("nord.colors").palette
local utils = require("nord.utils")

local nord = {}
local methods = {}
local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }

local function apply()
  local styles = require("nord.config").options.styles

  nord.normal = {
    a = { fg = c.polar_night.bright, bg = c.frost.ice },
    b = { fg = c.snow_storm.brighter, bg = c.polar_night.bright },
    c = { fg = c.snow_storm.brighter, bg = c.polar_night.brighter },
  }

  nord.insert = {
    a = { fg = c.polar_night.bright, bg = c.snow_storm.origin },
  }

  nord.visual = {
    a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
  }

  nord.replace = {
    a = { fg = c.polar_night.bright, bg = c.aurora.yellow },
  }

  nord.command = {
    a = { fg = c.polar_night.bright, bg = c.aurora.purple },
  }

  nord.inactive = {
    a = { fg = c.snow_storm.origin, bg = utils.make_global_bg() },
    b = { fg = c.snow_storm.origin, bg = utils.make_global_bg() },
    c = { fg = c.snow_storm.origin, bg = c.polar_night.bright },
  }

  if styles.lualine_bold then
    for _, mode_name in ipairs(modes) do
      nord[mode_name].a.gui = "bold"
    end
  end
end

function methods.refresh()
  apply()
  return nord
end

apply()

return setmetatable(nord, { __index = methods })
