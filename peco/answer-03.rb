SENTENCE = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'.freeze
pi = SENTENCE.split(' ').inject([]) do |list, word|
  list << word.gsub(/[^\w]/, '').size
end
p pi
