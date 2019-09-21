class Integer
  def times
    x = 0
    while x < self
      x += 1
    end
    self
  end
end

p 3.times{puts "D'oh!"}

