n, y = gets.split.map(&:to_i)

# c_10000 = [y.div(10000), n].min
# c_5000 = [y.div(5000), n].min
# c_1000 = [y.div(1000), n].min

# TLE
# for i in 0..c_10000
#   for j in 0..c_5000
#     for k in 0..c_1000
#       if 10000*i + 5000*j + 1000*k == y
#         ans = [i, j, k]
#         break
#       end
#     end
#   end
# end

# ans = [-1, -1, -1] if ans.sum > n

# p ans

# 正解

# iとjが確定すればkは一意に求まるので、計算量がO(n**3)からO(n**2)まで減らせる。

# def cal(c_10000, c_5000, n, y)
#   for i in 0..c_10000
#     for j in 0..c_5000
#       k = n - (i + j)
#       if k >= 0
#         if 10000*i + 5000*j + 1000*k == y
#           print ("#{i} #{j} #{k}")
#           exit
#         end
#       end
#     end
#   end
#   print ("-1 -1 -1")
# end

# puts cal(c_10000, c_5000, n, y)


# もっと整理かつrubyっぽくeachを使う
def otoshidama(n, y)
  (0..n).each do |i|
    (0..n-i).each do |j|
      k = n - (i + j)
      if k >= 0 && 10000*i + 5000*j + 1000*k == y
        print "#{i} #{j} #{k}"
        exit
      end
    end
  end
  print "-1 -1 -1"
end

otoshidama(n, y)