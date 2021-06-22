n=gets.chomp.to_i
x,y=[0]*n,[0]*n
for i in 0..n-1
  x[i],y[i]=gets.chomp.split.map(&:to_f)
end
ans=0
for i in 0..n-1
  for j in i+1..n-1
    a=(y[j]-y[i])/(x[j]-x[i])
    if -1<=a && a<=1
      ans+=1
    end
  end
end
puts ans