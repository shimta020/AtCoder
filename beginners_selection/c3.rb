# n = gets.to_i
# arr = []
# n.times{ |n| arr << gets.split.map(&:to_i) }

# ans = 'Yes'

# arr.each_with_index do |_, key|
#   if key >= 1
#     p _
#     t = arr[key][0] - arr[key-1][0]
#     distance = (arr[key][1] - arr[key][1]).abs + (arr[key][2] - arr[key][2]).abs
#     if t < distance
#       ans = 'No'
#       break
#     elsif (t.odd? && distance.even?) || (t.even? && distance.odd?)
#       ans = 'No'
#     end
#   end
# end

# arr.each_with_index do |_, key|
#   if key >= 1
#     t = arr[key][0] - arr[key-1][0]
#     distance = (arr[key][1] - arr[key][1]).abs + (arr[key][2] - arr[key][2]).abs
#     if t < distance && ((t.odd? && distance.even?) || (t.even? && distance.odd?))
#       ans = 'No'
#       break
#     end
#   end
# end

# puts ans

n = gets.strip.to_i

t_old = x_old = y_old = 0
n.times do
  t, x, y = gets.strip.split.map(&:to_i)

#移動可能時刻と最短到着時刻を計算
  abel = (t_old - t).abs
  dist = (x_old - x).abs + (y_old - y).abs

  if (t + x + y) % 2 != 0 || abel < dist #<-条件追加
    puts 'No'
    exit
  end

#今回入力された値を記録
  t_old = t
  x_old = x
  y_old = y
end
puts 'Yes'