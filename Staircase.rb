def staircase(n)
 i = 1
 str = ""
 until i > n 
     arr = []
     i.times do |n|
         arr.push("#")
     end
     space= ""
     (n-i).times{|x| space+=" "} 
     str+=space+arr.join('') + "\n"
     i+=1
 end
    str
end


puts staircase(4)
puts staircase(6)