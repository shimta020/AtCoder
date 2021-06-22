def how_kcal(kcal, ml)
  kcal * (ml.to_f/100)
end

kcal, ml = gets.split.map(&:to_i)

puts how_kcal(kcal, ml)