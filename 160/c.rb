k, n = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

total_d = []

between_fl = (arr[0] + k - arr.last)

total_d << between_fl

(0..(n-2)).each do |x|
  total_d << arr[x+1] - arr[x]
end

puts k - total_d.max