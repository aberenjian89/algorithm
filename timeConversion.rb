def timeConversion(s)
 str = s.split(':')
    hr =str[0].to_i
    ampm = str[-1][-2..-1]
    str[-1]=str[-1][0...-2] 
    if ampm == "AM" && hr < 12
        result  = 12-(12-hr)
        if result < 10 
            str[0] = "0"+result.to_s
        else
            str[0] = result.to_s
        end
    elsif ampm =="AM" && hr == 12
        str[0]= "00"
    elsif (ampm == "PM") && hr == 12 
        str[0] = "12"
    elsif     
       str[0] = (hr + 12).to_s  
    end
    str.join(':')
end



puts "07:05:45 PM => #{timeConversion("07:05:45PM")}"
puts "07:05:45 AM => #{timeConversion("07:05:45AM")}"
puts "12:45:54 PM => #{timeConversion("12:45:54PM")}"
puts "12:45:54 AM => #{timeConversion("12:45:54AM")}"
puts "10:45:54 PM => #{timeConversion("10:45:54PM")}"
puts "10:45:54 AM => #{timeConversion("10:45:54AM")}"



