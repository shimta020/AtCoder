N = gets.to_i
works = []
N.times do
  works << gets.split.map(&:to_i)
end

tmp_1 = (works.transpose[0]).sort
tmp_2 = (works.transpose[1]).sort

min_1 = tmp_1[1]
min_2 = tmp_2[1]
min_3 = tmp_1[0] + tmp_2[0]

ans = [min_1, min_2, min_3].min

puts ans