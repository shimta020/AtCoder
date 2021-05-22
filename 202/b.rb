ints = gets.strip.split('').reverse

ans =
ints.map do |n|
  if n == '6'
    n = '9'
  elsif n == '9'
    n = '6'
  else
    n
  end
end

puts ans.join