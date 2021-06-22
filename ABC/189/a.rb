s = gets.strip.split('')
puts s.uniq.size == 1 ? 'Won' : 'Lost'