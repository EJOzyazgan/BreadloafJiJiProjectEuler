# What is the largest prime factor of the number 600851475143?

def isPrime(num)
    for i in (2..num-1)
        if (num % i === 0)
            return false
        end
    end

    return true
end

def getMaxPrimeFactor(num)
    maxPrimeFactor = 1

    for i in (2..num-1)
        if (num % i === 0)
            num /= i
            maxPrimeFactor = i
            if (num === 1)
                break
            end
        end
    end

    return maxPrimeFactor
end

puts getMaxPrimeFactor(600851475143)