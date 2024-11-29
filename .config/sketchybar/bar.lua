local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
  margin = 20,
  y_offset = 10,
  corner_radius = 10,
  topmost = "window",
  height = 40,
  color = colors.bar.bg,
  padding_right = 2,
  padding_left = 2,
})