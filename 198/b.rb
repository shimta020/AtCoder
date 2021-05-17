# https://atcoder.jp/contests/abc198/tasks/abc198_b

s = gets.strip

palindrome = false
0.upto(9) do |n|
  result = '0'*n + s
  if result == result.reverse
    palindrome = true
    break
  end
end

puts palindrome ? 'Yes' : 'No'