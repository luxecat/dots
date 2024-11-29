return {
  black = 0xff282c34,
  white = 0xffabb2bf,
  red = 0xffe06c75,
  green = 0xff98c379,
  blue = 0xff61afef,
  yellow = 0xffe5c07b,
  orange = 0xffe5c07b,
  magenta = 0xffe06c75,
  grey = 0xff282c34,
  transparent = 0x00000000,

  bar = {
    bg = 0xff282c34,
    border = 0xffabb2bf,
  },
  popup = {
    bg = 0xff282c34,
    border = 0xffabb2bf
  },
  bg1 = 0xff282c34,
  bg2 = 0xff282c34,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
