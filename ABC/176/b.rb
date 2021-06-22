n = gets.to_i.digits
ans = n.sum

puts ans%9 == 0 ? 'Yes' : 'No'