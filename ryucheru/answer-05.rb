  def moji_ngram(value)

      (0..value.length).each_cons(2){ |num|
        print value[num[0]]
        print " "
        print value[num[1]]
        puts ""
      }

  end

  def tango_ngram(value)
    list =  value.split(" ")

    list.each_cons(2){|num|
      print value[num[0]]
      print " "
      print value[num[1]]
      puts ""
    }

  end

  str = "I am an NLPer"

  moji_ngram(str)
  tango_ngram(str)
