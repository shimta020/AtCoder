n = gets.to_i
arr = gets.strip.split.map(&:to_i)
num = arr.length-1
ans = 0

0.upto(num-1) do |i_1|
  (i_1+1).upto(num) do |i_2|
    ans += (arr[i_2]-arr[i_1])**2
  end
end

puts ans