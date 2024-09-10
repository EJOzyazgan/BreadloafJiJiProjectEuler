# Find the sum of all the multiples of 3 or 5 below 1000.

def findMultiples(num)
    multiples = Array.new
    for i in 3..num-1
        if i % 3 === 0 or i % 5 === 0 
            multiples.push(i)
        end
    end

    return multiples
end

puts findMultiples(1000).sum()