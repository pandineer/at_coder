a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0

a_i = a

loop do
  sum_a = 500 * a_i
  b_i = b
  loop do
    sum_b = sum_a + 100 * b_i
    c_i = c
    loop do
      sum_c = sum_b + 50 * c_i
      count = count + 1 if sum_c == x
      c_i = c_i - 1
      break if c_i < 0
    end
    b_i = b_i - 1
    break if b_i < 0
  end
  a_i = a_i - 1
  break if a_i < 0
end

puts count
