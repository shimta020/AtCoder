strs = gets.strip.split('')

lower = []
upper = []

strs.each_with_index do |s, idx|
  if idx == 0 || idx.even?
    lower << s
  else
    upper << s
  end
end

puts lower.all?{|s| s.downcase == s} && upper.all?{|s| s.upcase == s} ? 'Yes' : 'No'