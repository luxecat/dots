local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
  margin = 14,
  y_offset = 10,
  corner_radius = 10,
  topmost = "window",
  height = 40,
  color = colors.transparent,
  padding_right = 2,
  padding_left = 2,
})
