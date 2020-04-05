# not cleared

k = gets.to_i

def lunlun?(num)
  max_digit = Math.log10(num).to_i + 1
  return true if max_digit == 1
  max_digit.step(1, -1) do |i|
    upper = num / (10 ** i)
    lower = (num - (upper * (10 ** i))) /  (10 ** (i - 1))
    return false if (upper - lower).abs > 1
  end
  return true
end

count = 0
lunlun_num = 0
loop do
  lunlun_num = lunlun_num + 1
  if lunlun?(lunlun_num)
    count = count + 1
  end
  break if count == k
end

puts lunlun_num
