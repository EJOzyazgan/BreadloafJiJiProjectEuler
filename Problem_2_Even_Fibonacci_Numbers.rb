# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def findEvenFibonacci(limit)
    evenFibonacci = [2]
    curNum1 = 1
    curNum2 = 2

    while curNum2 < limit
        tempNum = curNum1
        curNum1 = curNum2
        curNum2 = tempNum + curNum1

        if (curNum2 % 2 === 0 and curNum2 < limit)
            evenFibonacci.push(curNum2)
        end 
    end

    return evenFibonacci
end

puts findEvenFibonacci(4000000).sum()