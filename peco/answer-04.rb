sentence = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
words = []
words = sentence.split(' ')

cnt = 1
answer = {}

words.each do |str|
  if cnt == 1 || cnt == 5 || cnt == 6 || cnt == 7 || cnt == 8 || cnt == 9 || cnt == 15 || cnt == 16 || cnt == 19
    answer[str[0]] = cnt
  else
    answer[str[0, 2]] = cnt
  end
  cnt = cnt + 1
end

p answer
