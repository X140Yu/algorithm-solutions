# https://leetcode.com/contest/weekly-contest-96/problems/projection-area-of-3d-shapes/

# @param {Integer[][]} grid
# @return {Integer}
def projection_area(grid)
  res = 0
  grid.each_with_index do |row, x|
      row.each_with_index do |item, y|
          res += 1 if item != 0
      end
  end

  grid.each_with_index do |row, x|
      res += row.max
  end
  
  (0...grid[0].count).each do |i|
      max_item = 0
      grid.each_with_index do |row, _|
          max_item = [row[i], max_item].max
      end
      res += max_item
  end
  
  res
end