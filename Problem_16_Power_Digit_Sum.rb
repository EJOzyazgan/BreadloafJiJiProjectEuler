# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

def getSumOfDigits(num)
  # puts num
  sum = 0

  while num > 1
    sum = sum + num % 10
    num = num / 10
  end

  return sum
end

puts getSumOfDigits(2**1000)