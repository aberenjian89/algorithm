def plusMinus(arr)
    #
    # Write your code here.
    #
    result = []
    pos = arr.select{|x| x > 0}
    zeros = arr.select{|x| x == 0}
    neg = arr.select{|x| x < 0}
    if pos.length > 0
        numtoString = (pos.length.to_f/arr.length).round(arr.length).to_s
        result.push(check_percsion(numtoString,arr.length))
    end
    if neg.length > 0 
        numtoString = (neg.length.to_f/arr.length).round(arr.length).to_s
        result.push(check_percsion(numtoString,arr.length))
    end
    if zeros.length > 0 
        numtoString = (zeros.length.to_f/arr.length).round(arr.length).to_s
        result.push(check_percsion(numtoString,arr.length))
    end
    result
end
    
def check_percsion(numtoString,length)
        indexof = numtoString.index('.')
        a = numtoString[indexof+1..-1]
        if (a.length < length)
            diff = length - a.length
            diff.times do |n|
               numtoString += '0' 
            end
        end
    return numtoString
end




arr = [-4,3,-9,0,4,1]


p plusMinus(arr)