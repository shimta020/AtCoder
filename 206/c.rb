# require 'benchmark'
# include Benchmark

# n = gets.to_i
# arr = gets.split.map(&:to_i)

# def sample(arr)
#   arr.combination(2).to_a.select{ |a,b| a != b}.size
# end

# Benchmark.benchmark(CAPTION, 7, FORMAT) do |x|
#   x.report("sample:"){ sample(arr) }
# end

n = gets.to_i
arr = gets.split.map(&:to_i)

total = (n*(n-1))/2
rejects = 0

arr = arr.group_by(&:itself).transform_values(&:size).sort

arr.each do |a|
  rejects += (a[1]*(a[1]-1))/2 if a[1] != 1
end

puts total - rejects