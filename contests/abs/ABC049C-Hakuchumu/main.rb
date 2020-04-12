s = gets.chomp

@answer = 'NO'

def check(str)
  if str == ''
    @answer = 'YES'
    return
  end
  if str.start_with?('dream')
    check(str.slice('dream'.length, str.length - 'dream'.length))
  end
  return if @answer == 'YES'
  if str.start_with?('dreamer')
    check(str.slice('dreamer'.length, str.length - 'dreamer'.length))
  end
  return if @answer == 'YES'
  if str.start_with?('erase')
    check(str.slice('erase'.length, str.length - 'erase'.length))
  end
  return if @answer == 'YES'
  if str.start_with?('eraser')
    check(str.slice('eraser'.length, str.length - 'eraser'.length))
  end
end

check(s)

puts @answer
