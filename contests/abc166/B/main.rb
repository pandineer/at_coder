n, k = gets.chomp.split(" ").map(&:to_i);
holder = []
1.step(n, 1) do |i|
  holder[i] = false
end
1.step(k, 1) do |i|
  d = gets.chomp.to_i
  a_arr = gets.chomp.split(" ").map(&:to_i);
  a_arr.each do |j|
    holder[j] = true
  end
end

puts holder.select{ |e| e == false}.count
