str = "Atbash is a simple substitution cipher for the Hebrew alphabet."

def cipher(str)
  result = ""
  str.chars.each{|s|
    charcode = s.ord
    if charcode >= 97 && charcode <= 122
      result << 219 - charcode
    else
      result << s
    end
  }
  return result
end

result = cipher(str)
p result
result = cipher(result)
p result
