# frozen_string_literal: true

buf = "パタトクカシーー"
# 文字列を配列に展開
arr = buf.split("")
ans = ""
arr.each_with_index do |s, i|
  # 奇数文字のみ抽出
  ans += s if i.odd?
end
puts ans
