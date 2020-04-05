# not cleared

_, m = gets.chomp.split(" ").map(&:to_i);
a_arr = gets.chomp.split(" ").map(&:to_i);

a_arr.sort!.reverse!

sum = 0
a_arr.each do |e|
  sum = sum + e
end

puts sum
puts a_arr[m-1]
puts sum / (4 * m)

if a_arr[m - 1] < sum / (4 * m)
  puts 'No'
else
  puts 'Yes'
end
