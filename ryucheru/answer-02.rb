str1 = "パトカー"
str2 = "タクシー"
result = [str1.chars, str2.chars].transpose.map{ |i| i.join }.join
puts result
