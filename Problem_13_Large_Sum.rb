# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

def loadNumbersFromFile(file)
  numbers = Array.new

  f = File.open(file, "r")
  f.each_line do |line|
    numbers.push(line)
  end
  f.close

  # puts numbers.inspect
  return numbers
end

def getFirstNumberOfDigits(numDigits, num)
  stringNum = num.to_s()
  return stringNum[0...numDigits]
end

def getSumOfFirstNumberOfDigits(numDigits)
  numbers = loadNumbersFromFile("problem_files/Problem_13_Numbers.txt")
  sum = 0

  numbers.each do |num|
    sum = sum + num[0...numDigits + 1].to_i()
  end

  return getFirstNumberOfDigits(numDigits, sum)
end

puts getSumOfFirstNumberOfDigits(10)
