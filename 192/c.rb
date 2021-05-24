a, K = gets.split.map(&:to_i)
a = a.to_s

(1..K).each do |k|
  max = a.chars.sort.reverse.join.to_i
  min = a.chars.sort.join.to_i
  a_n = (max - min).to_s
  if a == a_n
    break
  else
    a = a_n
  end
end

puts a