# frozen_string_literal: true

# rand_char 関数
# 配列の先頭と末尾を除いたランダムなインデックスを生成する。
#
# @author tosite
# @param  Array   arr
# @param  Integer max_len
# @return Array
# @example
#   rand_char(%w(aiueo), 4)
#   # => [2, 3, 1]
def rand_char(arr, max_len)
  res = []
  # puts arr.length
  for i in 1..(max_len - 1)
    res.push(i)
  end
  res.shuffle!
end

buf = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
ans = ""
arr = buf.split(" ")

r = []
arr.each_with_index do |b, i|
  tmp = ""
  ans += " "
  # 文字数が4文字以下なら入れ替えない
  if b.length <= 4
    r.push(b)
    ans += b
    next
  end
  chars   = b.split("")
  max_len = chars.length - 1
  rand_char(chars, max_len).each do |idx|
    tmp += chars[idx]
  end
  ans = "#{chars[0]}#{tmp}#{chars[max_len]}"
  r.push(ans)
end

puts r.join(" ")
