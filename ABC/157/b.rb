arr = []
target_nums = []

3.times { arr << gets.split.map(&:to_i) }

gets.to_i.times { target_nums << gets.to_i }

ans = []
flat_arr = arr.flatten

target_nums.each do |x|
  if flat_arr.include?(x)
    ans << flat_arr.index(x)
  end
end

p ans.sort

# puts ans.include?((0&&1&&2)||(3&&4&&5)||(6&&7&&8)||(0&&3&&6)||(1&&4&&7)||(2&&5&&8)||(0&&4&&8)||(3&&5&&7)) ? 'Yes' : 'No'
puts ans.include?((6&&7&&8)||(0&&3&&6)||(1&&4&&7)||(2&&5&&8)||(0&&4&&8)) ? 'Yes' : 'No'