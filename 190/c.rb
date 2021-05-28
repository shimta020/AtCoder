arr = []
people = []
tmp = []
ans = 0

n, m = gets.split.map(&:to_i)
m.times do
  arr << gets.split.map(&:to_i)
end
k = gets.to_i
k.times do
  people << gets.split.map(&:to_i)
end


people.each do |pe|
  max_num = pe.max
  min_num = pe.min
  if tmp.include?(min_num)
    tmp << max_num
  else
    tmp << min_num
  end
end

nums = tmp.uniq.sort

arr.each do |a|
  ans += 1 if nums.include?(a[0]) && nums.include?(a[1])
end

puts ans