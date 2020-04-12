n = gets.chomp.to_i
s = gets.chomp

count = 0

0.step(n - 3, 1) do |i|
  first = s.slice(i)
  (i + 1).step(n - 2, 1) do |j|
    second = s.slice(j)
    next if first == second
    k = j + 1
    third = 'RGB'
    third.delete!(first).delete!(second)
    loop do
      k = s.index(third, k)
      break if k.nil?
      count = count + 1 if (j - i) != (k - j)
      k = k + 1
    end
  end
end

puts count
