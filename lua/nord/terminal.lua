local terminal = {}

local c = require("nord.colors").palette

function terminal.apply()
  if vim.o.background == "light" then
    -- Nord Light terminal colors (from Ghostty/iTerm2 Nord Light)
    vim.g.terminal_color_0 = "#3B4252"
    vim.g.terminal_color_1 = "#BF616A"
    vim.g.terminal_color_2 = "#96B17F"
    vim.g.terminal_color_3 = "#C5A565"
    vim.g.terminal_color_4 = "#81A1C1"
    vim.g.terminal_color_5 = "#B48EAD"
    vim.g.terminal_color_6 = "#7BB3C3"
    vim.g.terminal_color_7 = "#A5ABB6"
    vim.g.terminal_color_8 = "#4C566A"
    vim.g.terminal_color_9 = "#BF616A"
    vim.g.terminal_color_10 = "#96B17F"
    vim.g.terminal_color_11 = "#C5A565"
    vim.g.terminal_color_12 = "#81A1C1"
    vim.g.terminal_color_13 = "#B48EAD"
    vim.g.terminal_color_14 = "#82AFAE"
    vim.g.terminal_color_15 = "#ECEFF4"
  else
    -- dark
    vim.g.terminal_color_0 = c.polar_night.bright
    vim.g.terminal_color_8 = c.polar_night.brightest

    -- light
    vim.g.terminal_color_7 = c.snow_storm.brighter
    vim.g.terminal_color_15 = c.snow_storm.brightest

    -- colors
    vim.g.terminal_color_1 = c.aurora.red
    vim.g.terminal_color_9 = c.aurora.red

    vim.g.terminal_color_2 = c.aurora.green
    vim.g.terminal_color_10 = c.aurora.green

    vim.g.terminal_color_3 = c.aurora.yellow
    vim.g.terminal_color_11 = c.aurora.yellow

    vim.g.terminal_color_4 = c.frost.artic_water
    vim.g.terminal_color_12 = c.frost.artic_water

    vim.g.terminal_color_5 = c.aurora.purple
    vim.g.terminal_color_13 = c.aurora.purple

    vim.g.terminal_color_6 = c.frost.ice
    vim.g.terminal_color_14 = c.frost.polar_water
  end
end

function terminal.highlights()
  return {

    TermCursor = { fg = c.snow_storm.origin, bg = c.none, reverse = true }, -- cursor in a focused terminal
    TermCursorNC = { fg = c.polar_night.brightest, bg = c.none, reverse = true }, -- cursor in an unfocused terminal
  }
end

return terminal
