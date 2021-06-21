h, w = gets.split.map(&:to_i)

first_row = (w/2.0).ceil
second_row = (w/2)

first_row_cnt = (h/2.0).ceil
second_row_cnt = (h/2)

if h == 1 || w == 1
  puts 1
else
  puts first_row*first_row_cnt + second_row*second_row_cnt
end