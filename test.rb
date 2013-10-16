require './screen'
require './device'

s = Blinkofant::Screen.new
d = Blinkofant::Device.new(s)

s.row(1, true)
d.flush(s)

while true do
  s.shift_rows
  d.flush(s)
  sleep(1)
end
