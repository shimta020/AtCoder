# a, b = gets.split.map(&:to_i)
# puts (a*b).even? ? 'Even' : 'Odd'

x = gets.strip.split.map(&:to_i)
puts x.all?(&:odd?) ? 'Odd' : 'Even'