buf      = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
ans      = ''
# 無効な文字の消去
replaced = buf.gsub(/[,.!?]/, '')
arr      = replaced.split(' ')

arr.each do |b|
  ans += "#{b.length}, "
end

# 末尾のカンマの削除
len = ans.length
ans.slice!(len - 2, 2)

puts "[#{ans}]"