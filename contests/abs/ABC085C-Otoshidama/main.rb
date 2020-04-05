n, y = gets.chomp.split(" ").map(&:to_i);

n.step(0, -1) do |n_ichiman|
  sum_tmp = 10_000 * n_ichiman
  next if sum_tmp > y
  (n - n_ichiman).step(0, -1) do |n_gosen|
    sum = sum_tmp
    sum = sum + 5_000 * n_gosen
    sum = sum + 1_000 * (n - n_ichiman - n_gosen)
    if sum == y
      puts "#{n_ichiman} #{n_gosen} #{(n - n_ichiman - n_gosen)}"
      exit
    end
  end
end
puts "-1 -1 -1"
