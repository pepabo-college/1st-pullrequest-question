  def string_shuffle(s)
    s.split("").shuffle.join
  end

  def function(str)

    list = str.split(" ")

    arry = []
    list.each {|value|
      if(value.length > 4) then
          value = string_shuffle(value)
      end
      arry << value
    }
    puts arry

  end

  str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
  function(str)
