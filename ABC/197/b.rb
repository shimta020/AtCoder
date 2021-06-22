h, w, x, y = gets.split.map(&:to_i)
rows = []
h.times { rows << gets.strip.split('') }

row_down_cnt = 0
row_up_cnt = 0
line_down_cnt = 0
line_up_cnt = 0

(y-1).downto(0) do |n|
  if rows[x-1][n] == '.'
    row_down_cnt += 1
  else
    break
  end
end

(y).upto(w-1) do |n|
  if rows[x-1][n] == '.'
    row_up_cnt += 1
  else
    break
  end
end

(x-2).downto(0) do |n|
  if rows[n][y-1] == '.'
    line_down_cnt += 1
  else
    break
  end
end

(x).upto(h-1) do |n|
  if rows[n][y-1] == '.'
    line_up_cnt += 1
  else
    break
  end
end

puts row_down_cnt + row_up_cnt + line_down_cnt + line_up_cnt