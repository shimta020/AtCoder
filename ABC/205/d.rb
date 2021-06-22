n, q = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
target = []
q.times { target << gets.to_i }

ans_arr = []

arr = arr.map.with_index { |a, key| a-key }

target.each do |t|
  arr.each_with_index do |a, key|
    if t >= arr.last
      ans_arr << arr.size + t
      break
    elsif a > t
      ans_arr << t + key
      break
    end
  end
end

puts ans_arr