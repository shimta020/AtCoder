h, w = gets.split.map(&:to_i)
arr = []
h.times{ arr << gets.chomp.chars }

tmp = 0
ans = arr.map{ |s| s == '#' ? '#' : 0}
p ans

(0..(w-1)).each do |a|
  (0..(h-1)).each do |b|
    if arr[a][b] != '#'
      (-1..1).each do |dx|
        (-1..1).each do |dy|
          x = a + dx
          y = b + dy
          if x >= 0 && x <= w-1 && y >= 0 && y <= h-1
            p arr[a]
            tmp += 1 if arr[x][y] == '#'
          end
        end
      end
    end
    ans[a][b] = tmp
    tmp = 0
  end
end

p ans