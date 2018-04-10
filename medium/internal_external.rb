factorial = Enumerator.new do |y|
  base = i = 1
  y << base
  loop do
    y << (base..i).reduce(:*)
    i += 1
  end
end

7.times { puts factorial.next }

factorial.rewind

factorial.take(7).each { |f| puts f }
