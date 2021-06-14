require 'prime'

n = gets.to_i

ans = 1

(2..(n-1)).each do |n|
  ans += Prime.prime_division(n).map {|p, e| e + 1 }.inject(:*)
end

puts ans