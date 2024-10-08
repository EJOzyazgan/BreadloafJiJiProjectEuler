# Starting in the top left corner of a 2 x 2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# 
# How many such routes are there through a 20 x 20 grid?

def getNumberOfLatticePathsForGrid(x, y)
  grid = Array.new(x, Array.new(y))
  numPaths = 0
  hasValidPath = true

  while hasValidPath
    
  end
  
  return numPaths
end

puts getNumberOfLatticePathsForGrid(2, 2)