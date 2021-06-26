n = gets.to_i
arr = []
n.times{ arr << gets.split.map(&:to_i) }
ans = 0

for i in 0..(n-1)
  for j in (i+1)..(n-1)
    head = [arr[i][1], arr[j][1]].max
    tail = [arr[i][2], arr[j][2]].min
    if tail >= head
      if head == arr[i][1] && tail == arr[j][2]
        if head == tail
          ans += 1 if (arr[i][0] == 1 || arr[i][0] == 3) && (arr[j][0] == 1 || arr[j][0] == 2)
        else
          ans += 1
        end
      elsif head == arr[j][1] && tail == arr[i][2]
        if head == tail
          ans += 1 if (arr[i][0] == 1 || arr[i][0] == 2) && (arr[j][0] == 1 || arr[j][0] == 3)
        else
          ans += 1
        end
      elsif (head == arr[i][1] && tail == arr[i][2]) && (arr[i][1] >= arr[j][1] && arr[i][2] <= arr[j][2])
        ans += 1
      elsif (head == arr[j][1] && tail == arr[j][2]) && (arr[j][1] >= arr[i][1] && arr[j][2] <= arr[i][2])
        ans += 1
      end
    end
  end
end

puts ans