a, b, c, d = gets.split.map(&:to_i)

if d*c - b == 0
  puts -1
  exit
else
  n = a/(d*c - b).to_f
  puts n.ceil > 0 ? n.ceil : -1
end