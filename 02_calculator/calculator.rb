#write your code here
 def add a, b
  a + b
 end

 def subtract a, b
  a - b
 end

 def sum numbers 
  sum = 0
  i = 0
  if numbers == []
    sum
  else
    while i < numbers.length
      sum += numbers.pop()
    end
  end
  sum
 end

 def multiply a, b, *more
  product = 1
  i = 0
  if more != []
    while i < more.length
      product *= more.pop()
    end
  end
  product *= a*b
 end

 def power base, exponent
  base ** exponent
 end

 def factorial a 
  product = a
  i = a
  if product == 1 || product == 0
    product = 1
  else
    while i > 1
      product *= i - 1
      i-=1
    end
  end
  product
 end
