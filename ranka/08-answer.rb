require './lib/cipher'
buf = "I'm 1234 Integer."
encode_str = cipher(buf)
decode_str = cipher(encode_str)

puts "plane text   : #{buf}"
puts "encript text : #{encode_str}"
puts "decode text  : #{decode_str}"
puts (buf == decode_str) ? "matched!" : "unmatched..."