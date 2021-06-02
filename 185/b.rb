n, m, t = gets.split.map(&:to_i)
arr = []

m.times do
  arr << gets.split.map(&:to_i)
end

ans = 'Yes'
battery = n - arr[0][0]
len = arr.size - 1

1.upto(len) do |i|
  battery -= (arr[i][0]-arr[i-1][1])
  if battery <= 0
    ans = 'No'
    break
  end
  battery += (arr[i][1]-arr[i][0])
end

battery -= (t - arr[len][1])

ans = 'No' if battery <= 0

puts ans