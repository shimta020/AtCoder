n, k = gets.split.map(&:to_i)

x = (1..n).inject(:+)
y = (1..k).inject(:+)
ans = (x*100)*k + y*n

puts ans