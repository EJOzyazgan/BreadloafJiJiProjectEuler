# What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20 x 20 grid?

def loadGridFromFile(file)
  grid = Array.new{Array.new}

  f = File.open(file, "r")
  f.each_line do |line|
    grid.push(line.split(" "))
  end
  f.close

  return grid
end

def convertGridToInt(grid)
  for i in (0...grid.length())
    for x in (0...grid[i].length())
      grid[i][x] = grid[i][x].to_i
    end
  end

  return grid
end


def greatestProductInGrid(grid, size)
  maxProduct = 0
  
  for i in (0...grid.length())
    for x in (0...grid.length())
      up = 1
      down = 1
      left = 1
      right = 1
      diagonal = 1
      
      # UP 
      if (i >= size - 1)
        for s in (0...size)
          # print grid[i - s][x], " "
          up = up * grid[i - s][x]
        end
        # puts

        if (up > maxProduct)
          maxProduct = up
        end
      end

      # LEFT
      if (x >= size - 1)
        for s in (0...size)
          # print grid[i][x - s], " "
          left = left * grid[i][x - s]
        end
        # puts

        if (left > maxProduct)
          maxProduct = left
        end
      end

      #DIAGONAL BACK
      if (x < grid.length() - size) and (i < grid.length() - size)
        for s in (0...size)
          # print grid[i + s][x + s], " "
          diagonal = diagonal * grid[i + s][x + s]
        end
        # puts

        if (diagonal > maxProduct)
          maxProduct = diagonal
        end
      end

      #DIAGONAL FORWARD
      diagonal = 1
      if (x < grid.length() - size) and (i >= size - 1)
        for s in (0...size)
          # print grid[i - s][x - s], " "
          diagonal = diagonal * grid[i - s][x + s]
        end
        # puts

        if (diagonal > maxProduct)
          maxProduct = diagonal
        end
      end
    end
  end

  return maxProduct
end

grid = loadGridFromFile("problem_files/Problem_11_Grid.txt")
intGrid = convertGridToInt(grid)

puts greatestProductInGrid(grid, 4)