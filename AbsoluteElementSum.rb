require 'byebug'
def playingWithNumbers(arr, queries)
  total = 0  
  res = arr.dup
  result = []    
  arr.each_index do |i|
    # adding queries[i] to res  
    j = 0 
    total = 0  
    while j <= arr.length-1     
       res[j] = res[j] + queries[i]
       if res[j] < 0 
           total += -1*(res[j])
       else
           total += res[j]    
       end
       j+=1 
    end
    result.push(total)  
  end
    result
end

arr = [-1,2,-3]
q = [1,-2,3]


p (playingWithNumbers(arr,q))