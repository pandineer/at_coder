# not cleared

n, a, b, c = gets.chomp.split(" ").map(&:to_i);
@s_arr = []
1.step(n, 1) do |i|
  @s_arr[i] = gets.chomp
end

@is_finished = false

def search(count, a_prev, b_prev, c_prev, history)
  # puts "---"
  # puts "count: #{count}"
  # puts "a_prev: #{a_prev}"
  # puts "b_prev: #{b_prev}"
  # puts "c_prev: #{c_prev}"
  # puts "history: #{history}"

  return if a_prev < 0
  return if b_prev < 0
  return if c_prev < 0

  if count > (@s_arr.count - 1) # @s_arr[0] = nil
    puts 'Yes'
    puts history
    @is_finished = true
    return
  end

  case @s_arr[count]
  when 'AB' then
    search(count + 1, a_prev + 1, b_prev - 1, c_prev, history + "A\n")
    return if @is_finished
    search(count + 1, a_prev - 1, b_prev + 1, c_prev, history + "B\n")
    return if @is_finished
  when 'AC' then
    search(count + 1, a_prev + 1, b_prev, c_prev - 1, history + "A\n")
    return if @is_finished
    search(count + 1, a_prev - 1, b_prev, c_prev + 1, history + "C\n")
    return if @is_finished
  when 'BC' then
    search(count + 1, a_prev, b_prev + 1, c_prev - 1, history + "B\n")
    return if @is_finished
    search(count + 1, a_prev, b_prev - 1, c_prev + 1, history + "C\n")
    return if @is_finished
  end
end

search(1, a, b, c, '')
puts 'No' unless @is_finished
