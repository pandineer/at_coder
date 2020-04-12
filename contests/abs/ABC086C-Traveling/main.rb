n = gets.chomp.to_i

used_time, x, y = 0, 0, 0
is_available = true
n.times do
  plan_arr = gets.chomp.split(" ").map(&:to_i)
  time = plan_arr[0] - used_time
  distance = (x - plan_arr[1]).abs + (y - plan_arr[2]).abs
  if distance > time || distance.even? != time.even?
    is_available = false
    # break
  end
  used_time = used_time + plan_arr[0]
  x = plan_arr[1]
  y = plan_arr[2]
end

if is_available
  puts 'Yes'
else
  puts 'No'
end
