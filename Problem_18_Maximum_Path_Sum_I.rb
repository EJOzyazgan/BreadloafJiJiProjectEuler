# Find the maximum total from top to bottom of the triangle below:
# 
# 75
# 95 64
# 17 47 82
# 18 35 87 10
# 20 04 82 47 65
# 19 01 23 75 03 34
# 88 02 77 73 07 63 67
# 99 65 04 28 06 16 70 92
# 41 41 26 56 83 40 80 70 33
# 41 48 72 33 47 32 37 16 94 29
# 53 71 44 65 25 43 91 52 97 51 14
# 70 11 33 28 77 73 17 78 39 68 17 57
# 91 71 52 38 17 14 91 43 58 50 27 29 48
# 63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

def loadTriangleFromFile(file)
  triangle = Array.new{Array.new}

  f = File.open(file, "r")
  f.each_line do |line|
    triangle.push(line.split(" "))
  end
  f.close

  return triangle
end

def convertTriangleToInt(triangle)
  for i in (0...triangle.length())
    for x in (0...triangle[i].length())
      triangle[i][x] = triangle[i][x].to_i
    end
  end

  return triangle
end

def getMaxPathSumOfTriangle(triangle)
  sum = 0
  maxSum = 0
  lastPathIndex = 0

  for i in (0...triangle.length())
    row = triangle[i]

    pathOneIndex = lastPathIndex
    pathTwoIndex = lastPathIndex + 1

    if (pathTwoIndex > row.length() - 1)
      pathTwoIndex = row.length() - 1
    end

    if (row[pathOneIndex] > row[pathTwoIndex])
      lastPathIndex = pathOneIndex
    else
      lastPathIndex = pathTwoIndex
    end

    print row.inspect, "\n"," ROW MAX: ", row.max(), " ROW MAX INDEX: ", row.index(row.max())," NUM: ", row[lastPathIndex], "\n"

    maxSum = maxSum + row.max()
    sum = sum + row[lastPathIndex]
  end
  
  print "MAX SUM: ", maxSum, "\n"
  return sum
end

triangle = loadTriangleFromFile("problem_files/Problem_18_Triangle.txt")
triangleInt = convertTriangleToInt(triangle)
puts getMaxPathSumOfTriangle(triangleInt)