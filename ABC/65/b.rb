n = gets.to_i
arr = []
n.times{ arr << gets.to_i }

tmp = 1
order = []

while arr[tmp - 1] != 2
  target = arr[tmp - 1]
  if order.include?(target)
    puts -1
    exit
  else
    order << target
    tmp = target
  end
end

puts order.size + 1