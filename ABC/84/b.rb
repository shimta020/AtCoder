a, b = gets.split.map(&:to_i)
s = gets.chomp

puts s.scan(/\d{#{a}}-\d{#{b}}/) == [s] ? 'Yes' : 'No'