require 'set'

def ngrams(str, n)
  ngram_set = Set.new
  str.split('').each_cons(n) do |ngram|
    ngram_set << ngram.join('')
  end
  ngram_set
end

def bigrams(str)
  ngrams(str, 2)
end

x = bigrams('paraparaparadise')
y = bigrams('paragraph')

puts "X: #{x.inspect}"
puts "Y: #{y.inspect}"
puts "Union of X and Y: #{x.union(y).inspect}"
puts "Intersection of X and Y: #{x.intersection(y).inspect}"
puts "Difference of X and Y: #{x.difference(y).inspect}"
puts "Is 'se' in X?: #{x.include?('se')}"
puts "Is 'se' in Y?: #{y.include?('se')}"
