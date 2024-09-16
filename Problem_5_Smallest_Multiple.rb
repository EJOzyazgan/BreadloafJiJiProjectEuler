# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20

def getSmallestMultipleOfRange(min, max)
  currentMultiple = max
  
  while true
    isMultiple = true
    for i in (min..max)
      if (currentMultiple % i != 0)
        isMultiple = false
        break
      end
    end

    if (isMultiple)
      return currentMultiple
    end

    currentMultiple = currentMultiple + max
  end

  return -1
end

puts getSmallestMultipleOfRange(11, 20)