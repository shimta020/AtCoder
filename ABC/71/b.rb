s = gets.chomp.chars.uniq.sort
ans = 'None'

('a'..'z').each do |str|
  unless s.include?(str)
    ans = str
    break
  end
end

puts ans