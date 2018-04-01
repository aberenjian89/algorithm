def bigSorting(arr)
   return arr if arr.length <= 0 
    arr.map!(&:to_i)
    pivot = arr[0]
    left = arr.drop(1).select{|x| x < pivot}
    right = arr.drop(1).select{|x| x >= pivot}
    return bigSorting(left.map(&:to_s))+[pivot.to_s]+bigSorting(right.map(&:to_s))
    
end

a = ["31415926535897932384626433832795","1","3","10","3","5"]
p bigSorting(a)