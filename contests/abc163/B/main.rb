n, m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

rest = n - a_arr.sum

if rest >= 0
  puts rest
else
  puts '-1'
end
