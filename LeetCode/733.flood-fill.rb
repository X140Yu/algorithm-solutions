# https://leetcode.com/problems/flood-fill/description/

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  queue = [[sr, sc]]
  color = image[sr][sc]
  return image if color == new_color
  until queue.empty?
    x, y = queue.pop
    image[x][y] = new_color
    queue.push [x+1, y] if x + 1 < image.count and image[x+1][y] == color
    queue.push [x-1, y] if x - 1 >= 0 and image[x-1][y] == color
    queue.push [x, y+1] if y + 1 < image[0].count and image[x][y+1] == color
    queue.push [x, y-1] if y - 1 >= 0 and image[x][y-1] == color
  end

  image
end