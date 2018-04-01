def plusMinus(arr)
    #
    # Write your code here.
    #
    result = []
    pos = arr.select{|x| x > 0}
    zeros = arr.select{|x| x == 0}
    neg = arr.select{|x| x < 0}
    if pos.length > 0
        result.push((pos.length.to_f/arr.length).round(arr.length))
    end
    if neg.length > 0 
        result.push((neg.length.to_f/arr.length).round(arr.length))
    end
    if zeros.length > 0 
        result.push((zeros.length.to_f/arr.length).round(arr.length))
    end
    result
end




arr = [-4,3,-9,0,4,1]


p plusMinus(arr)