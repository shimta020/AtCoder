n = gets.to_i
arr = gets.split.map(&:to_i)

colors = Array.new(8, 0)
tmp = 0

def classification(target)
  case target
  when 1..399
    0
  when 400..799
    1
  when 800..1199
    2
  when 1200..1599
    3
  when 1600..1999
    4
  when 2000..2399
    5
  when 2400..2799
    6
  when 2800..3199
    7
  end
end

arr.each do |a|
  if a >= 3200
    tmp += 1
  else
    color = classification(a)
    colors[color] = 1 if colors[color] == 0
  end
end

min_count = colors.count(1)
max_count = min_count + tmp

min_count += 1 if min_count == 0

puts "#{min_count} #{max_count}"