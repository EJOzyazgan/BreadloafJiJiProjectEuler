##
# The following iterative sequence is defined for the set of positive integers:
# n -> n / 2 (n is even)
# n -> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
# 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
# 
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?


def getCollatzChainLength(startingNum)
  chainLength = 1

  while startingNum > 1
    if (startingNum % 2 === 0)
      startingNum = startingNum / 2
    elsif
      startingNum = 3 * startingNum + 1
    end

    chainLength = chainLength + 1
  end

  # puts chainLength
  return chainLength
end


def getStartingNumberUnderNumberWithLongestChain(num)
  longestChainStartingNumber = 1
  longestChain = 1

  for startingNum in (1..num)
    chainLength = getCollatzChainLength(startingNum)
    if (chainLength > longestChain)
      longestChainStartingNumber = startingNum
      longestChain = chainLength
    end
  end

  return longestChainStartingNumber
end

puts getStartingNumberUnderNumberWithLongestChain(1000000)