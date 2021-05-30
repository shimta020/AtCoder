# 以下のプログラムを好きな言語でコーディングして、ソースコードをメール添付で返信してください。
# 制限時間は10分です。

# 1から150までの数字を標準出力に改行つきで出力するプログラムを作ってください。
# 3の倍数と3がつく数字の時だけ、数字のあとに!をつけてください。
# 好きな実行環境で実行して動くことを確認してください。

# （問題の内容に関してはググるのはナシでやってみてください。言語リファレンスはWeb上のサイトを見ても構いません）

# 出力例）
# 1
# 2
# 3!
# 4
# 5
# 6!
# 7
# 8
# 9!
# 10
# 11
# 12!
# 13!
# ....以下150まで続く

# nums = (1..150).to_a

# nums.each do |num|
#   if num%3 == 0 || num.to_s.chars.include?('3')
#     puts num.to_s + '!'
#   else
#     puts num
#   end
# end

nums = (1..150).map(&:to_s)

nums.each do |num|
  if (num.to_i)%3 == 0 || num.chars.include?('3')
    puts num + '!'
  else
    puts num
  end
end