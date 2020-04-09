x, y, w = gets.chomp.split(" ")
x = x.to_i
y = y.to_i

carr = []
9.times do
  carr << gets.chomp.split(//)
end

answer = ""

x = x - 1
y = y - 1

4.times do
  answer << carr[y][x]
  case w
  when 'R', 'RU', 'RD'
    x = x + 1
    if x == 9
      w.gsub!('R', 'L')
      x = 7
    end
  when 'L', 'LU', 'LD'
    x = x - 1
    if x == -1
      w.gsub!('L', 'R')
      x = 1
    end
  end
  case w
  when 'U', 'RU', 'LU'
    y = y - 1
    if y == -1
      w.gsub!('U', 'D')
      y = 1
    end
  when 'D', 'RD', 'LD'
    y = y + 1
    if y == 9
      w.gsub!('D', 'U')
      y = 7
    end
  end
end

puts answer
