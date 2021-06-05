require 'prime'
n = gets.to_i
arr = gets.split.map(&:to_i)

divs = []

arr.each do |a|
  Prime.prime_division(a).each do |pr|
    divs << pr[0]
  end
end

divs = divs.group_by(&:itself).transform_values(&:size)

p divs.max{|a, b| a[1] <=> b[1]}[0]