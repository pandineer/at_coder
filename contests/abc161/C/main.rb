n, k = gets.chomp.split(" ").map(&:to_i);

n_next_1 = (n-k).abs
n_next_2 = (n - (k * (n / k))).abs
n_next= [n_next_1, n_next_2].min
loop do
  break if n <= n_next
  n = n_next
  n_next = (n-k).abs
end

puts n
