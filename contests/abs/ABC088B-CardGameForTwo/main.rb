gets
arr = gets.chomp.split(" ").map(&:to_i);

arr.sort!.reverse!

alice = 0
arr.select.with_index { |_, i| i.even? }.each do |e|
  alice = alice + e
end

bob = 0
arr.select.with_index { |_, i| i.odd? }.each do |e|
  bob = bob + e
end

puts alice - bob
