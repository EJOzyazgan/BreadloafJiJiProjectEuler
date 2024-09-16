# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def getsumOfSquares(maxNum)
  sum = 0

  if (maxNum < 1)
    return sum
  end

  for i in (1..maxNum)
    sum = sum + (i * i)
  end

  return sum
end

def getSquareOfSums(maxNum)
  sum = 0

  if (maxNum < 1)
    return sum
  end

  for i in (1..maxNum)
    sum = sum + i
  end

  return sum * sum
end

puts getSquareOfSums(100) - getsumOfSquares(100)