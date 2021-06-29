a, b = gets.split.map(&:to_i)

if a >= 0 && b <= 0 || a <= 0 && b >= 0
  ans = 'Zero'
elsif a > 0 && b > 0
  ans = 'Positive'
else
  if (b - a).odd?
    ans = 'Positive'
  else
    ans = 'Negative'
  end
end

puts ans