# [836] Rectangle Overlap

# https://leetcode.com/problems/rectangle-overlap/description/

# * algorithms
# * Easy (42.27%)
# * Source Code:       836.rectangle-overlap.rb
# * Total Accepted:    7.4K
# * Total Submissions: 17.4K
# * Testcase Example:  '[0,0,2,2]\n[1,1,3,3]'

# A rectangle is represented as a list [x1, y1, x2, y2], where (x1, y1) are the coordinates of its bottom-left corner, and (x2, y2) are the coordinates of its top-right corner.

# Two rectangles overlap if the area of their intersection is positive.  To be clear, two rectangles that only touch at the corner or edges do not overlap.

# Given two (axis-aligned) rectangles, return whether they overlap.

# Example 1:

# Input: rec1 = [0,0,2,2], rec2 = [1,1,3,3]
# Output: true

# Example 2:

# Input: rec1 = [0,0,1,1], rec2 = [1,0,2,1]
# Output: false

# Notes:

#   Both rectangles rec1 and rec2 are lists of 4 integers.
#   All coordinates in rectangles will be between -10^9 and 10^9.

# @param {Integer[]} rec1
# @param {Integer[]} rec2
# @return {Boolean}
def is_rectangle_overlap(rec1, rec2)
  x1, y1, x2, y2 = rec1
  a1, b1, a2, b2 = rec2
  !(x2 <= a1 || y1 >= b2 || a2 <= x1 || y2 <= b1)
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal true, is_rectangle_overlap([7, 8, 13, 15], [10, 8, 12, 20])
  end
end
