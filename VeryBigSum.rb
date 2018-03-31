def aVeryBigSum(n, ar)
    #
    # Write your code here.
    #
    if ar.length <= 1 
        return ar[0]
    else
        return ar[-1] + aVeryBigSum(n,ar[0...ar.length-1])
    end 
end


p aVeryBigSum(5,[1000000001,1000000002,1000000003,1000000004,1000000005])

#p aVeryBigSum(4,[1,2,3,4])