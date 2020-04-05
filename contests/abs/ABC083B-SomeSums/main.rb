n, a, b = gets.chomp.split(" ").map(&:to_i)

answer = 0

for num in 1..n
  num_tmp = num
  sum = 0
  max_digit = Math.log10(num).to_i + 1
  # puts "max_digit: #{max_digit}" if num_tmp == 11
  max_digit.step(1, -1) do |i|
    # puts "i: #{i}" if num_tmp == 11
    sum = sum + (num / (10 ** (i - 1)))
    # puts "sum: #{sum}" if num_tmp == 11
    num = num -((num / (10 ** (i - 1))) * (10 ** (i - 1)))
  end
  # puts "num_tmp: #{num_tmp}" if a <= sum && sum <= b
  answer = answer + num_tmp if a <= sum && sum <= b
end

puts answer
