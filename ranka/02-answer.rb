# frozen_string_literal: true

buf1 = "パトカー"
buf2 = "タクシー"
ans  = ""

arr1 = buf1.split("")
arr2 = buf2.split("")

# ループ回数の上限を取得
cnt = [arr1.length, arr2.length].max

for i in 0..cnt
  s1 = (!arr1[i].nil?) ? arr1[i] : ""
  s2 = (!arr2[i].nil?) ? arr2[i] : ""
  ans += s1 + s2
end

puts ans
