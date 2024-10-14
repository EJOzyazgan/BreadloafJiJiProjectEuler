# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 
# NOTE: Do not count spaces or hyphens. 
# For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
# The use of "and" when writing out numbers is in compliance with British usage.

def getDigitsOfNumber(num)
  digits = []

  while num > 0
    digits.push(num % 10)
    num = num / 10
  end

  return digits.reverse()
end

def getTensDigitWord(digit)
  if (digit === 1)
    return "one"
  elsif (digit === 2)
    return "two"
  elsif (digit === 3)
    return "three"
  elsif (digit === 4)
    return "four"
  elsif (digit === 5)
    return "five"
  elsif (digit === 6)
    return "six"
  elsif (digit === 7)
    return "seven"
  elsif (digit === 8)
    return "eight"
  elsif (digit === 9)
    return "nine"
  end

  return ""
end

def getTeensWord(digit)
  if (digit === 0)
    return "ten"
  elsif (digit === 1)
    return "eleven"
  elsif (digit === 2)
    return "twelve"
  elsif (digit === 3)
    return "thirteen"
  elsif (digit === 4)
    return "fourteen"
  elsif (digit === 5)
    return "fifteen"
  elsif (digit === 6)
    return "sixteen"
  elsif (digit === 7)
    return "seventeen"
  elsif (digit === 8)
    return "eighteen"
  elsif (digit === 9)
    return "nineteen"
  end
end

def getHundredsDigitWord(digits)
  if (digits.first() === 0)
    return getTensDigitWord(digits.last())
  elsif (digits.first() === 1)
    return getTeensWord(digits.last())
  elsif (digits.first() === 2)
    return "twenty " + getTensDigitWord(digits.last())
  elsif (digits.first() === 3)
    return "thirty " + getTensDigitWord(digits.last())
  elsif (digits.first() === 4)
    return "forty " + getTensDigitWord(digits.last())
  elsif (digits.first() === 5)
    return "fifty " + getTensDigitWord(digits.last())
  elsif (digits.first() === 6)
    return "sixty " + getTensDigitWord(digits.last())
  elsif (digits.first() === 7)
    return "seventy " + getTensDigitWord(digits.last())
  elsif (digits.first() === 8)
    return "eighty " + getTensDigitWord(digits.last())
  elsif (digits.first() === 9)
    return "ninety " + getTensDigitWord(digits.last())
  end
end

def numberToWords(num)
  digits = getDigitsOfNumber(num)
  numDigits = digits.length()
  numWord = ""

  while numDigits > 0
    if (numDigits === 4)
      numWord = numWord + getTensDigitWord(digits.first()) + " thousand"
    elsif (numDigits === 3)
      if (digits.first() != 0)
        numWord = numWord + getTensDigitWord(digits.first()) + " hundred and "
      end
    elsif (numDigits === 2)
      numWord = numWord + getHundredsDigitWord(digits.first(2))
      break
    elsif (numDigits === 1)
        numWord = numWord + getTensDigitWord(digits.first())
    end

    digits.shift
    numDigits = digits.length()
  end

  numWord.rstrip!()

  if (numWord[numWord.length()-4...numWord.length()] === " and")
    numWord = numWord[0..numWord.length()-4]
  end

  return numWord
end

def sumNumberWordsForRange(range)
  sumOfWords = 0

  for num in range
    words = numberToWords(num)
    print words, " ", words.tr(" ", "").length(), "\n"

    sumOfWords = sumOfWords + words.tr(" ", "").length()
  end

  return sumOfWords
end

puts sumNumberWordsForRange(1..1000)

