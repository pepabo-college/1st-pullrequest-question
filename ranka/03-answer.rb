buf      = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
ans      = ''
# 無効な文字の消去
arr = buf.gsub(/[,.!?]/, '').split(' ')
lengths = []
arr.each do |b|
  lengths.push b.length
end
puts "[#{lengths.join(", ")}]"