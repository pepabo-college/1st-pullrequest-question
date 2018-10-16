require "./lib/bigram"

buf = 'I am an NLPer'
splited  = buf.split(' ')
replaced = buf.gsub(/ /, '')

puts "単語："
puts getBiGram splited

puts "========"

puts "文字列："
puts getBiGram replaced