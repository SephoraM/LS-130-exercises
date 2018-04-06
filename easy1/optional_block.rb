def compute(val)
  block_given? ? yield(val) : 'Does not compute.'
end

puts compute(5) { |num| num + 3 } == 8
puts compute('a') { |str| str + 'b' } == 'ab'
puts compute("Whoops") == 'Does not compute.'
