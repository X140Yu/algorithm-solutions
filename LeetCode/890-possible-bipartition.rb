# Given a set of N people (numbered 1, 2, ..., N), we would like to split everyone into two groups of any size.

# Each person may dislike some other people, and they should not go into the same group.

# Formally, if dislikes[i] = [a, b], it means it is not allowed to put the people numbered a and b into the same group.

# Return true if and only if it is possible to split everyone into two groups in this way.

# Example 1:

# Input: N = 4, dislikes = [[1,2],[1,3],[2,4]]
# Output: true
# Explanation: group1 [1,4], group2 [2,3]
# Example 2:

# Input: N = 3, dislikes = [[1,2],[1,3],[2,3]]
# Output: false
# Example 3:

# Input: N = 5, dislikes = [[1,2],[2,3],[3,4],[4,5],[1,5]]
# Output: false

# Note:

# 1. 1 <= N <= 2000
# 2. 0 <= dislikes.length <= 10000
# 3. 1 <= dislikes[i][j] <= N
# 4. dislikes[i][0] < dislikes[i][1]
# 5. There does not exist i != j for which dislikes[i] == dislikes[j].

# @param {Integer} n
# @param {Integer[][]} dislikes
# @return {Boolean}
def possible_bipartition(n, dislikes)
  group0 = []
  group1 = []
  pending = []

  dislikes.each do |dis|
    if group0.include? dis[0]
      group1.push dis[1] unless group1.include? dis[1]
    elsif group0.include? dis[1]
      group1.push dis[0] unless group1.include? dis[0]
    elsif group1.include? dis[0]
      group0.push dis[1] unless group0.include? dis[1]
    elsif group1.include? dis[1]
      group0.push dis[0] unless group0.include? dis[0]
    else
      if group0.empty? && group1.empty?
        group0.push dis[0]
        group1.push dis[1]
      else
        pending.push dis
      end
    end
  end

  pending.each do |dis|
    if group0.include? dis[0]
      group1.push dis[1] unless group1.include? dis[1]
    elsif group0.include? dis[1]
      group1.push dis[0] unless group1.include? dis[0]
    elsif group1.include? dis[0]
      group0.push dis[1] unless group0.include? dis[1]
    elsif group1.include? dis[1]
      group0.push dis[0] unless group0.include? dis[0]
    end
  end

  group0.count + group1.count == n
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal possible_bipartition(4, [[1, 2], [1, 3], [2, 4]]), true
    assert_equal possible_bipartition(3, [[1, 2], [1, 3], [2, 3]]), false
    assert_equal possible_bipartition(5, [[1, 2], [2, 3], [3, 4], [4, 5], [1, 5]]), false
    assert_equal possible_bipartition(10, [[4, 7], [4, 8], [5, 6], [1, 6], [3, 7], [2, 5], [5, 8], [1, 2], [4, 9], [6, 10], [8, 10], [3, 6], [2, 10], [9, 10], [3, 9], [2, 3], [1, 9], [4, 6], [5, 7], [3, 8], [1, 8], [1, 7], [2, 4]]), true
    assert_equal possible_bipartition(10, [[4, 7], [4, 8], [2, 8], [8, 9], [1, 6], [5, 8], [1, 2], [6, 7], [3, 10], [8, 10], [1, 5], [7, 10], [1, 10], [3, 5], [3, 6], [1, 4], [3, 9], [2, 3], [1, 9], [7, 9], [2, 7], [6, 8], [5, 7], [3, 4]]), true
  end
end
