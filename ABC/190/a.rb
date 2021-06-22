a, b, c = gets.split.map(&:to_i)

if c == 0
  puts a <= b ? "Aoki" : "Takahashi"
elsif c == 1
  puts a < b ? "Aoki" : "Takahashi" 
end