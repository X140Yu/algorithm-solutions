# https://leetcode.com/problems/construct-the-rectangle/description/

# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  width = Math.sqrt(area).floor
  width.downto(1).each do |w|
      return [area / w, w] if (area % w) == 0
  end
end