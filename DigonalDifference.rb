def diagonalDifference(a)
   column = 0 
   left_diagnol = 0 
    a.each do |arr|
       left_diagnol += arr[column]
       column +=1    
    end
    p left_diagnol
    column = -1
    right_diagnol = 0
    a.each do |arr|
        right_diagnol += arr[column]
        column -= 1 
    end
    (left_diagnol - right_diagnol).abs
end


p diagonalDifference([[11,2,4],[4,5,6],[10,8,-12]])