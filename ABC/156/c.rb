n = gets.to_i
arr = gets.split.map(&:to_i)

tmp = []

1.upto(n) do |n|
  # tmp_arr = arr.map do |x|
    # (x - n)**2
  # end
  # tmp << tmp_arr.sum
  sum = 0
  arr.each { |x| sum += (n-x)**2 }
  tmp << sum
end

puts tmp.min