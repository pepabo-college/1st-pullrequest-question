class Sample
   str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

   list =  str.split(" ")

   array = []
   list.each{|value|
     #array.push(value)
     array << value.length
   }

   print array

end
