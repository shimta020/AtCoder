n, k = gets.split.map(&:to_i)
num = [] << n
i = 0
while i < k do
  if num[0] % 200 == 0
    num[0] = num[0].div(200)
  else
    num[0] = (num + [200]).join.to_i
  end
  i += 1
end

p num[0]

# わざわざ配列化しなくても200で割り切れなければx1000して200を足せばいい
# "#{n}200".to_iみたいな形にしても良い