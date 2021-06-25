s = gets.chomp.chars

ans = 0

while s.join.include?('BW')
  s.each_with_index do |val, idx|
    if val == 'B' && s[idx + 1] == 'W'
      s[idx] = 'W'
      s[idx + 1] = 'B'
      ans += 1
    end
  end
end

puts ans