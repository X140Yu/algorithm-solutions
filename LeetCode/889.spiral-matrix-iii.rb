# @param {Integer} r
# @param {Integer} c
# @param {Integer} r0
# @param {Integer} c0
# @return {Integer[][]}
def spiral_matrix_iii(r, c, r0, c0)
  move_count = 1
  res = []
  point = [r0, c0]

  while res.count != r * c

    0.upto(move_count - 1).each do
      x, y = point
      res.push [x, y] if x < r && y < c && x >= 0 && y >= 0
      point = [x, y + 1]
    end

    0.upto(move_count - 1).each do
      x, y = point
      res.push [x, y] if x < r && y < c && x >= 0 && y >= 0
      point = [x + 1, y]
    end
    move_count += 1

    0.upto(move_count - 1).each do
      x, y = point
      res.push [x, y] if x < r && y < c && x >= 0 && y >= 0
      point = [x, y - 1]
    end

    0.upto(move_count - 1).each do
      x, y = point
      res.push [x, y] if x < r && y < c && x >= 0 && y >= 0
      point = [x - 1, y]
    end
    move_count += 1
  end
  res
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal [[0, 0], [0, 1], [0, 2], [0, 3]], spiral_matrix_iii(1, 4, 0, 0)
    assert_equal [[1, 4], [1, 5], [2, 5], [2, 4], [2, 3], [1, 3], [0, 3], [0, 4], [0, 5], [3, 5], [3, 4], [3, 3], [3, 2], [2, 2], [1, 2], [0, 2], [4, 5], [4, 4], [4, 3], [4, 2], [4, 1], [3, 1], [2, 1], [1, 1], [0, 1], [4, 0], [3, 0], [2, 0], [1, 0], [0, 0]], spiral_matrix_iii(5, 6, 1, 4)
  end
end
