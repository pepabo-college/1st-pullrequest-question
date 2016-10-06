def GetCharBiNgram(str)
  arr_c = str.delete(" ").split(//).to_a
  arr_c_table = Array.new(arr_c.size)
  for i in 0..arr_c.size-2 do
    arr_c_table[i] = arr_c[i]
    arr_c_table[i].concat(arr_c[i+1])
  end
  return arr_c_table
end

def GetWordBiNgram(str)
  arr_w = str.split(" ").to_a
  arr_w_table = Array.new(arr_w.size)
  for i in 0..arr_w.size-2 do
    arr_w_table[i] = arr_w[i]
    arr_w_table[i].concat(arr_w[i+1])
  end
  return arr_w_table
end

str = "I am an NLPer"
puts "Input = " + str
puts ""

w_bigram = GetWordBiNgram(str)
puts "単語bi-gram"
puts w_bigram

c_bigram = GetCharBiNgram(str)
puts "文字bi-gram"
puts c_bigram
