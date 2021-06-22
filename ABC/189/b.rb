n, x = gets.split.map(&:to_i)
drinks = []
total = 0
num = 1

n.times do
  drinks << gets.split.map(&:to_i)
end

drinks.each do |drink|
  total += drink[0]*drink[1]
  if total > x * 100
    puts num
    exit
  end
  num += 1
end

puts -1