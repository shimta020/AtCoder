# N = gets.to_i
# last_num = Math.sqrt(N)

# mult_num = 0

# (2..last_num).each do |n|
#   t = n * n
#   while N >= t
#     mult_num += 1
#     t *= n
#   end
# end

# puts N - mult_num

# 上の例だと重複が発生する(3**4 = 81, 9**2 = 81とか)
# (1)配列を使って最後にuniqで重複を消去
# (2)setを使って集合としてカウント

require 'set'

N = gets.to_i
last_num = Math.sqrt(N)

s = Set.new

(2..last_num).each do |n|
  if n**2 > N
    break
  else
    b = 2
    while N >= n**b
      s.add(n**b)
      b += 1
    end
  end
end

puts N - s.size