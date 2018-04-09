def step(first, last, stride)
  i = first
  while i <= last
    yield(i)
    i += stride
  end
  [first, last]
end

step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10
#=> [1, 10]
