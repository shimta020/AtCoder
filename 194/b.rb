N = gets.to_i
works = []
N.times do
  works << gets.split.map(&:to_i)
end

tmp_1, tmp_2 = works.transpose
ans = []

tmp_1.each_with_index do |tmp1, i_1|
  tmp_2.each_with_index do |tmp2, i_2|
    if i_1 == i_2
      time = tmp1 + tmp2
    else
      time = [tmp1, tmp2].max
    end
    ans << time
  end
end

puts ans.min