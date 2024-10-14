# Starting in the top left corner of a 2 x 2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# 
# How many such routes are there through a 20 x 20 grid?

def getFactorial(num)
  sum = 1

  for i in (1..num)
    sum = sum * i
  end

  return sum
end

# n and k are grid size
def calculateLatticePaths(n, k)
  return getFactorial(n + k) / (getFactorial(n) * getFactorial(k))
end

puts calculateLatticePaths(20, 20)