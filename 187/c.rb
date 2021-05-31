n = gets.to_i
arr = []
n.times {arr << gets.strip}
ans = 'satisfiable'

arr.each do |a|
  if a.chars.first == '!'
    str = a[1..(a.size - 1)]
    ans = str if arr.include?(str)
    break
  else
    str = a
    ans = str if arr.include?('!' + str)
    break
  end
end

puts ans