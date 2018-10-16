require "./lib/bigram"

buf1 = 'paraparaparadise'
buf2 = 'paragraph'

arr1 = get_bi_gram_by_letter buf1
arr2 = get_bi_gram_by_letter buf2

puts '== X,Yの和集合 =='
puts arr1 | arr2
puts '== X,Yの積集合 =='
puts arr1 & arr2
puts '== X,Yの差集合 =='
puts arr1 - arr2
puts '== "se" が含まれているか =='
puts "X = #{arr1.include?('se')}."
puts "Y = #{arr2.include?('se')}."
