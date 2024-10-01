# Find the sum of all the primes below two million.

def isPrime?(num)
  for i in (2..num-1)
    if (num % i === 0)
        return false
    end
  end

  return true
end

def sumOfPrimesBellowNum(num)
  currentNum = 2
  sum = 0

  while currentNum < num
    if (isPrime?(currentNum))
      sum = sum + currentNum
    end

    currentNum = currentNum + 1
  end

  return sum
end

puts sumOfPrimesBellowNum(2000000)