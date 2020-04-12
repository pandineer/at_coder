n = gets.chomp.to_i
s = gets.chomp

count = 0

0.step(n - 3, 1) do |i|
  first = s.slice(i)
  (i + 1).step(n - 2, 1) do |j|
    second = s.slice(j)
    (j + 1).step(n - 1, 1) do |k|
      next if  (j - i) == (k - j)
      third = s.slice(k)
      if first != second && second != third && first != third
        count = count + 1
      end
    end
  end
end

puts count
