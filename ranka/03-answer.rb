# frozen_string_literal: true

buf = "Now I need a drink, alcoholic of course,"\
      " after the heavy lectures involving quantum mechanics."
# ans = ''
arr = buf.gsub!(/[,.!?]/, "").split(" ")

lengths = []
arr.each do |b|
  lengths.push b.length
end
puts "[#{lengths.join(', ')}]"
