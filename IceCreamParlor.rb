# Sunny and Johnny like to pool their money and go to the ice cream parlor. Johnny never buys the same flavor that Sunny does. The only other rule they
# have is that they spend all of their money.
# Given a list of prices for the flavors of ice cream, select the two that will cost all of the money they have.
# Complete the function icecreamParlor below to return an array containing the indexes of the prices of the two flavors they buy. The returned array must be sorted ascending.

def icecreamParlor(m, arr)
    # Complete this function
    res = []
    arr.each_index do |i|
        if i + 1 !=nil
            j = i + 1
          while j <= arr.length - 1
             if arr[i]+arr[j] == m
                 res.push([i+1,j+1])
             end
             j+=1
          end
        end
    end
    res
end



p icecreamParlor(4,[1,4,5,3,2])
