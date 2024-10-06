# Find the sum of all the primes below two million.

def sumOfPrimesBellowNum(num)
  currentNum = 6
  currentPrimes = [2, 3, 5]

  while currentNum < num
    isPrime = true
    # print "\n", currentPrimes, "\n"

    for i in (0..Math.sqrt(currentPrimes.last))
      if currentNum % currentPrimes.at(i) === 0
        isPrime = false
        break
      end
    end

    if (isPrime)
      currentPrimes.push(currentNum)
    end

    currentNum = currentNum + 1
  end

  # puts currentPrimes
  return currentPrimes.sum()
end

puts sumOfPrimesBellowNum(2000000)