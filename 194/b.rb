N = gets.to_i
works = []
N.times do
  works << gets.split.map(&:to_i)
end

p works