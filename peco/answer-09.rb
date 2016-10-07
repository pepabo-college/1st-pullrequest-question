def typoglycemia(phrase)
  phrase.split(' ').map do |word|
    if word.size <= 4
      word
    else
      word[0] + word[1, (word.size - 2)].split('').shuffle.join('') + word[-1]
    end
  end.join(' ')
end

phrase = ARGV[0]
exit if phrase.nil?
p typoglycemia(phrase)
