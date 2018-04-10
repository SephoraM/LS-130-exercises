items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | *bunch, last|
  puts bunch.join(", ")
  puts last
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |first, *bunch, last|
  puts first
  puts bunch.join(", ")
  puts last
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |first, *bunch|
  puts first
  puts bunch.join(", ")
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |item1, item2, item3, item4|
  puts "#{item1}, #{item2}, #{item3}, and #{item4}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!
