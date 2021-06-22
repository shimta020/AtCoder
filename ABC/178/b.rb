a, b, c, d = gets.split.map(&:to_i)

# ボツコード

# if b>0 && d>0
#   ans = b*d
# elsif b<=0 && d<=0
#   ans = a*c
# elsif b < 0 || d < 0
#   if b > d
    
#   else
    
#   end
# end

# 場合わけせずa,bとc,dの組み合わせのなかで最大値を出す

# w = a*c
# x = a*d
# y = b*c
# z = b*d

# puts [w,x,y,z].max

# productを使って行う

puts [a,b].product([c,d]).map{|x,y| x*y}.max