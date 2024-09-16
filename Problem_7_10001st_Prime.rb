# What is the 10001st prime number?

def isPrime(num)
  if num < 2
    return false
  end

  for i in (2..num-1)
      if (num % i === 0)
          return false
      end
  end

  return true
end

def getNthPrime(nthPrime)
  numPrimes = 0
  currentNum = 2
  
  while numPrimes < nthPrime
    if (isPrime(currentNum))
      numPrimes = numPrimes + 1

      if (numPrimes === nthPrime)
        return currentNum
      end
    end

    if (currentNum === 2)
      currentNum = currentNum + 1
    elsif
      currentNum = currentNum + 2
    end
  end

  return currentNum
end

puts getNthPrime(10001)
