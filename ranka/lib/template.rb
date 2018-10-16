# insert_in_template 関数
# 与えられた引数をテンプレートに差し込む。
#
# @author tosite
# @param  String hour
# @param  String attr
# @param  String value
# @return String
# @example
#   insert_in_template(12, '気温', 22.4)
#   # => 12時の気温は22.4
def insert_in_template(hour = 0, attr = "", value = 0)
  return "#{hour}時の#{attr}は#{value}"
end