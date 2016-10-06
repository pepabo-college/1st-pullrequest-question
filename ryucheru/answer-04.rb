str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.".split()
single_word = [1, 5, 6, 7, 8, 9, 15, 16, 19]
dist = {}


str.each.with_index(1) { |val, index|
  if (single_word.include?(index))
    temp_str = val[0]
    dist[temp_str] = index
  else
    temp_str = val[0..1]
    dist[temp_str] = index
  end
}
p dist
