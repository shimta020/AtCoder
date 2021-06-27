s = gets.chomp.chars

s = s.group_by(&:itself).transform_values(&:size)
puts s.values.all?(&:even?) ? 'Yes' : 'No'