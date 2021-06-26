n, k, q = gets.split.map(&:to_i)
arr = []
q.times{ arr << gets.to_i }

ans_p = arr.group_by(&:itself).transform_values(&:size)

(1..n).each do |n|
  if ans_p[n]
    puts k - q + ans_p[n] > 0 ? 'Yes' : 'No'
  else
    puts k - q > 0 ? 'Yes' : 'No'
  end
end