require "./lib/bigram"

buf = 'I am an NLPer'
# splited  = buf.split(' ')
# replaced = buf.gsub(/ /, '')

puts "単語："
puts get_bi_gram_by_word buf

puts "========"

puts "文字列："
puts get_bi_gram_by_letter buf