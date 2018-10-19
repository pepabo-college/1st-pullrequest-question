# frozen_string_literal: true

buf       = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations "\
            "Might Also Sign Peace Security Clause. Arthur King Can."
one_chars = [1, 5, 6, 7, 8, 9, 15, 16, 19]
# 無効な文字の消去
replaced = buf.gsub(/[,.!?]/, "")
arr      = replaced.split(" ")

ans = {}
arr.each_with_index do |b, i|
  pos = i + 1
  idx = (one_chars.include?(pos)) ? b[0] : b[0, 2]
  ans[idx] = pos
end
puts ans
