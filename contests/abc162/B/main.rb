n = gets.chomp.to_i

count = 0
1.step(n, 1) do |i|
  if i % 3 != 0 && i % 5 != 0
    count = count + i
  end
end

puts count
