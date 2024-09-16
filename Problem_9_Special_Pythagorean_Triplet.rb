# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagoreanTriplet?(a, b, c)
  if (a < b and b < c)
    return a**2 + b**2 === c**2
  end

  return false
end

def findPythagoreanTripletofSum(tripletSum)
  sum = 0
  a = 1
  b = 2
  c = 3
  while sum < tripletSum
    print a, "\t", b, "\t", c, "\n"

    if(pythagoreanTriplet?(a, b, c))
      sum = a + b + c 

      if (sum === tripletSum)
        return [a, b, c]
      end
    end

    if ((c * c) > (a * a) + (b * b))
      b = b + 1
      if (b === c)
        a = a + 1
        c = c + 1
      end
    elsif
      c = c + 1
    end
  end

  return []
end

print findPythagoreanTripletofSum(24)