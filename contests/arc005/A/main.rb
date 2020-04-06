_ = gets
arr = gets.chomp.split(" ")

count = 0
arr.each do |word|
  word.delete!('.')
  if word == 'TAKAHASHIKUN' || word == 'Takahashikun' || word == 'takahashikun'
    count = count + 1
  end
end

puts count
