# frozen_string_literal: true

# get_bi_gram 関数
# 与えられた引数をbi-gram形式に変換する。
# 文字列・配列が空白だとエラーを返す。
#
# @author tosite
# @param  [Array] arr
# @return Array
# @see http://gihyo.jp/dev/serial/01/make-findspot/0005 / bi-gramについて
# @example
#   get_bi_gram(%w(I am an NLPer))
#   # => [Iam, aman, anNLPer, NLPer]
#   get_bi_gram('I am an NLPer')
#   # => [Ia, am, ma, an, nN, NL, LP, Pe, er, r]
def get_bi_gram(arr)
  if arr.length <= 0
    raise "文字列が空白です。何か入力してください。"
  end
  cnt = arr.length
  ans = []
  0.upto(cnt - 2) { |i|
    ans[i] = "#{arr[i]}#{arr[i + 1]}"
  }
  ans
end

# get_bi_gram_by_letter 関数
# 与えられた文字列を文字レベルでbi-gram形式に変換する。
#
# @author tosite
# @param [String] str
# @return Array
# @example
#   get_bi_gram_by_letter("I am an NLPer")
#   # => [Ia, am, ma, an, nN, NL, LP, Pe, er, r]
def get_bi_gram_by_letter(str)
  tmp = str.gsub(/ /, "").split("")
  get_bi_gram tmp
end

# get_bi_gram_by_letter 関数
# 与えられた文字列を単語レベルでbi-gram形式に変換する。
#
# @author tosite
# @param [String] str
# @return Array
# @example
#   get_bi_gram_by_word("I am an NLPer")
#   # => [Iam, aman, anNLPer, NLPer]
def get_bi_gram_by_word(str)
  tmp = str.split(" ")
  get_bi_gram tmp
end
