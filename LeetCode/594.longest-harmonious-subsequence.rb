# [594] Longest Harmonious Subsequence

# https://leetcode.com/problems/longest-harmonious-subsequence/description/

# * algorithms
# * Easy (41.49%)
# * Source Code:       594.longest-harmonious-subsequence.rb
# * Total Accepted:    25K
# * Total Submissions: 60.3K
# * Testcase Example:  '[1,3,2,2,5,2,3,7]'

# We define a harmonious array is an array where the difference between its maximum value and its minimum value is exactly 1.

# Now, given an integer array, you need to find the length of its longest harmonious subsequence among all its possible subsequences.

# Example 1:

# Input: [1,3,2,2,5,2,3,7]
# Output: 5
# Explanation: The longest harmonious subsequence is [3,2,2,2,3].


# Note:
# The length of the input array will not exceed 20,000.

# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  map = Hash.new(0)
  nums.each do |n|
    map[n] += 1
  end
  res = 0
  map.each do |k, v|
    res = [res, map[k-1] + v].max if map[k-1] != 0
    res = [res, map[k+1] + v].max if map[k+1] != 0
  end
  res
end

require 'minitest/autorun'

class TestMeSolution < Minitest::Test
  def test_solution
    assert_equal 5, find_lhs([1,3,2,2,5,2,3,7])
    assert_equal 0, find_lhs([1,1,1,1])
  end
end