a, b, w = gets.split.map(&:to_i)
w *= 1000

max_cnt = w/a

if w/b == 0
  min_cnt = w/b
else
  min_cnt = w/b + 1
end

if b * max >= w
  puts "#{min_cnt} #{max_cnt}"
else
  puts "UNSATISFIABLE"
end