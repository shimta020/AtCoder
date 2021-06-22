s = gets.chomp

arr = s.scan(/[ACGT]+/)
arr = arr.map(&:length)

puts arr.empty? ? 0 : arr.max