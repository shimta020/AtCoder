n, k = gets.split.map(&:to_i)
arr = []
n.times do
  arr << gets.split.map(&:to_i)
end

tmp = []

(1..(n-k+1)).each do |a|
  (a..k).each do |b|
    tmp << arr[a][b]
  end
end