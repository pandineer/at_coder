# not cleared

n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i);

count = 0
1.step(n, 1) do |i|
  (i + 1).step(n, 1) do |j|
    count = count + 1 if (j - i) == (a_arr[i - 1] + a_arr[j - 1])
  end
end

puts count
