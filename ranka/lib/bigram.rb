# 関　数：getBiGram
# 引　数：str[String || Array]
# 戻り値：Array
# 説　明：
#   与えられた引数のbi-gramを返す。
#   文字列、配列が空白だとエラーを返す。
# 判　例：I am an NLPer
# 文字列：[Iam, aman, anNLPer, NLPer]
# 単　語：[Ia, am, ma, an, nN, NL, LP, Pe, er, r]
def getBiGram(str)
  if str.length <= 0
    raise "文字列が空白です。何か入力してください。"
  end
  cnt = str.length
  ans = []
  for i in 0..(cnt - 1)
    ans[i] = "#{str[i]}#{str[i + 1]}"
  end
  return ans
end