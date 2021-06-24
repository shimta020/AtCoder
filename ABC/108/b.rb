x_1, y_1, x_2, y_2 = gets.split.map(&:to_i)

# 回転行列使わないパターン
# https://jpliterature.hatenablog.com/entry/abc108-b-ruined-square_1

d = x_2 - x_1
h = y_2 - y_1

x_3, y_3 = [x_2 - h, y_2 + d]
x_4, y_4 = [x_3 - d, y_3 - h]

ans = [x_3, y_3, x_4, y_4]

puts ans.join(' ')

# https://kyopro.hateblo.jp/entry/2018/09/02/012406
# https://w3e.kanazawa-it.ac.jp/math/category/gyouretu/henkan-tex.cgi?target=/math/category/gyouretu/kaitengyouretu.html
