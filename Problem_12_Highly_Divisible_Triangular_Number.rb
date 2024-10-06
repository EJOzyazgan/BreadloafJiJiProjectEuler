# What is the value of the first triangle number to have over five hundred divisors?

def getTriangleNumber(num)
  # Triangle num formual n(n + 1) / 2
  return (num * (num + 1)) / 2
end

def isPrime?(num)
  if num < 2
    return false
  end

  for i in (2...num)
      if (num % i === 0)
          return false
      end
  end

  return true
end

def getNextPrime(currentPrime)
  currentPrime = currentPrime
  currentNum = currentPrime + 1
  isPrime = false

  while !isPrime
    if isPrime?(currentNum)
      isPrime = true
      return currentNum
    end

    currentNum = currentNum + 1
  end

  return currentNum
end

def getNumDivisors(num)
  print num, "\t"
  currentPrime = 2
  currentExponentIndex = 0
  primeExponents = [0]
  
  while num > 1
    if (num % currentPrime === 0)
      primeExponents[currentExponentIndex] = primeExponents[currentExponentIndex] + 1
    else
      currentPrime = getNextPrime(currentPrime)
      primeExponents.push(0)
      currentExponentIndex = currentExponentIndex + 1
      next
    end

    # print currentPrime, "\t"

    num = num / currentPrime
  end

  numDivisors = 1

  for i in (0...primeExponents.length())
    if (primeExponents.at(i) > 0)
      numDivisors = numDivisors * (primeExponents.at(i) + 1)
    end
  end

  puts numDivisors
  return numDivisors
end

def getTriangleNumWithDivisors(wantedNumDivisors)
  numDivisors = 2
  currentNum = 1
  triangleNum = 6
  
  while numDivisors < wantedNumDivisors
    print "CURRENT NUM: ", currentNum, "\n"
    triangleNum = getTriangleNumber(currentNum)
    numDivisors = getNumDivisors(triangleNum)

    currentNum = currentNum + 1
  end

  return triangleNum
end

puts getTriangleNumWithDivisors(3)