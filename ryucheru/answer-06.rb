str1 = "paraparaparadise"
str2 = "paragraph"

def bigram(str)
  result = []
    str.chars.each_cons(2){|pair|
    result << pair.join
  }
  return result
end

result1 = bigram(str1)
result2 = bigram(str2)

p result1 | result2
p result1 - result2
p result1 & result2

p result1.include?('se')
p result2.include?('se')
