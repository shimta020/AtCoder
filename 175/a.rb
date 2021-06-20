weather_report = gets.chomp
now = 0
ans = 0
weather_report.chars.each do |a|
  if a == 'R'
    now += 1
  elsif 
    now = 0
  end
  if ans < now
    ans = now
  end
end
puts ans

# 別解
# puts (s=gets.chomp)=='RSR' ? 1:s.count('R')

# 別解
# p gets.scan(/R+/).max_by(&:size)&.size || 0