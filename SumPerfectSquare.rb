def perfect_square(n)
  res = []
  until n==0
    base = 1
    last_result = 0
    while n >= base ** 2
      last_result = base ** 2
      base+=1
    end
    n = n - last_result
    res.push(last_result)
  end
  return res
end


p perfect_square(12)
p(perfect_square(13))
p(perfect_square(20))
p(perfect_square(6))
