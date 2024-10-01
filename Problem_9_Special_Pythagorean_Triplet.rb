# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagoreanTriplet?(a, b, c)
    return a**2 + b**2 == c**2
end

def findPythagoreanTripletofSum(tripletSum)
  a, b, c = 0
  n = 1

  while n < tripletSum

    m = 2
    while m < tripletSum
      a = m**2 - n**2
      b = 2 * m * n
      c = m**2 + n**2
    
      print a, "\t", b, "\t", c, "\n"

      if pythagoreanTriplet?(a, b, c) and a > 0
        if a + b + c === tripletSum
          return a * b * c
        end
      end

      m = m + 1
    end

    n = n + 1
  end

  return []
end

print findPythagoreanTripletofSum(1000)