a, b, m = gets.split.map(&:to_i)
ref_vals = gets.split.map(&:to_i)
mcw_vals = gets.split.map(&:to_i)
discounts = []
m.times{ discounts << gets.split.map(&:to_i) }

ans = [] << ref_vals.min + mcw_vals.min

discounts.each do |d|
  ans << ref_vals[d[0]-1] + mcw_vals[d[1]-1] - d[2] 
end

puts ans.min