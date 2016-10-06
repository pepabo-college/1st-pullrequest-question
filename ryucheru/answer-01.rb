class Sample
  str = "パタトクカシーー"

  cnt = 0
  str.each_char{ |char|
      if (cnt % 2 == 0) then
           print char
      end
      cnt = cnt + 1
  }
end
