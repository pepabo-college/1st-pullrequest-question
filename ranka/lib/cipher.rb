# cipher 関数
# 小文字英語[a-z]のみ、文字コード値から219を引いた文字に変換する。
# なお、暗号化と復号化は全く同じ処理で行えるため統一してある。
#
# @author tosite
# @param  String str
# @return String
# @example
#   cipher("I'm 1234 Integer.")
#   # => I'n 1234 Imgvtvi.
#   cipher("I'n 1234 Imgvtvi.")
#   # => I'm 1234 Integer.
def cipher(str)
  res = ''
  str.each_char do |c|
    res += (c =~ /[a-z]/) ? (219 - c.ord).chr : c
  end
  return res
end