counter = lambda do
  x = 0
  get_x = lambda{x}
  incr = lambda{x += 1}
  decr = lambda{x -= 1}

  {get_x: get_x, incr: incr, decr: decr}
end

c1 = counter.call
p c1[:incr].call

p c1[:incr].call

p c1[:incr].call

p c1[:decr].call

p c1[:get_x].call

c2 = counter.call

puts "Test if they're distinct objects"

p c2[:get_x].call

p c1[:get_x].call

