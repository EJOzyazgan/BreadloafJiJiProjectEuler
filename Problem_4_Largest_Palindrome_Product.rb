# Find the largest palindrome made from the product of two 3 digit numbers

def isPalindrome(num)
    digits = Array.new

    while num > 0
        digits.push(num % 10)
        num = num / 10
    end

    for i in (0..digits.length/2)
        if (digits[i] != digits[digits.length - 1 - i])
            return false
        end
    end

    return true
end

def getLargestProductPalindrome(num1, num2)
    palindromes = Array.new

    while num1 > 0
        tempNum2 = num2

        while tempNum2 > 0
            currentProduct = num1 * tempNum2

            if (isPalindrome(currentProduct))
                palindromes.push(currentProduct)
            end

            tempNum2 = tempNum2 - 1
        end
        num1 = num1 - 1
    end

    return palindromes.max()
end

puts getLargestProductPalindrome(999, 999)