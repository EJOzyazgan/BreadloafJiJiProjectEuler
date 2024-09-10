# Find the sum of the digits in the number 100!.

def factorial(num)
    if num == 0
        return 1
    end

    return num * factorial(num - 1)
end

def digitSum(num)
    sum = 0

    while num > 0 do
        sum += num % 10
        num /= 10
    end

    return sum
end

puts digitSum(factorial(100))