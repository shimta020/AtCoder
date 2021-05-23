N = gets.to_i
last_num = Math.sqrt(N)

mult_num = 0

(2..last_num).each do |n|
  t = n * n
  while N >= t
    mult_num += 1
    t *= n
  end
end

puts N - mult_num