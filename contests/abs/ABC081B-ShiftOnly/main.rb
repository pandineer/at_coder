gets
arr = gets.chomp.split(" ").map(&:to_i);

i = 0
while arr.all? { |e| e.even? } do
  i = i + 1
  arr.map! { |e| e / 2 }
end

puts i
