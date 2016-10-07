class String
  def cipher
    strings = self.split(//)
    encrypt = Array.new
    strings.each { |c|
      output = c.ord
      if c.ord >= 97 && c.ord <= 122 then
        output = 219 - c.ord
      end
      encrypt << output.chr
    }
    return encrypt.join
  end
end

str = ARGV[0]
puts str.cipher

